# Apache Superset on Google Cloud Run
This repository deploys Apache Superset to Google Cloud Run and configures it to use Google for authentication. 

![Elastic open source data stack](../docs/assets/elastic-logo-big.png)

This repository is designed to be opened on a machine with [Docker](https://www.docker.com/) installed. When opened in [Visual Studio Code](https://code.visualstudio.com/) with the [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension installed, Visual Studio Code can open the repository in its own container using all Python requirements specified in this repository's `requirements.txt` file.

Prior to opening the repo in dev containers, copy `.env-sample` to create your own `.env` file. Update the environment variables appropriately.

The deployment process below can feel a little random and disjointed at times. This is due to needing to perform steps such as an initial Cloud Run deployment to receive a service URL to then go back in GCP and finish the configuration of a previous step. Trust the process and run through in the order detailed below.

## Configuring Google oAuth
This Superset deployment will use Google for authentication. The steps below will configure your Google Cloud project to allow your users to authenticate with Superset.

### Configure consent screen

1. Head to APIs & Services > OAuth consent screen
2. Select *Internal* and click **Create**
3. Set the following:
    * App name
    * User support email
    * Authorized domains
    * Developer contact information
4. Click **Save and continue**
5. Click **Add or Remove Scopes**
6. Select *email* and *profile* scopes and click **Update**
7. Click **Save and continue**

### Create credentials

1. Head to APIs & Services > Credentials
2. Click **Create credentials**, *OAuth Client ID*
3. Select **Application type**: *Web application*
4. Make note of the client id and client secret


## Login & Configure 

* Services
* Service Accounts 
* Create IAM
* Postgres SQL Instance

First things first. Start Remote Explorer from this directory (Open Folder in Container). Then start running the commands below. The process of compiling the dev docker container can take than 10 mintues.

Once this completes **open and new terminal session and leave the initial one running**
```bash

# command/control click the link and copy the token then come back to the terminal and paste
gcloud auth login \
    && gcloud config set project $GOOGLE_CLOUD_PROJECT

# enable necessary apis for the steps below
gcloud services enable artifactregistry.googleapis.com \
    && gcloud services enable cloudbuild.googleapis.com \
    && gcloud services enable run.googleapis.com

# create service account that Cloud Run service will run under
gcloud iam service-accounts create $GOOGLE_SERVICE_ACCOUNT

# add various IAM roles to the service account
gcloud projects add-iam-policy-binding $GOOGLE_CLOUD_PROJECT \
    --member="serviceAccount:$GOOGLE_SERVICE_ACCOUNT@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com" \
    --role=roles/cloudsql.client

gcloud projects add-iam-policy-binding $GOOGLE_CLOUD_PROJECT \
    --member="serviceAccount:$GOOGLE_SERVICE_ACCOUNT@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com" \
    --role=roles/bigquery.jobUser

gcloud projects add-iam-policy-binding $GOOGLE_CLOUD_PROJECT \
    --member="serviceAccount:$GOOGLE_SERVICE_ACCOUNT@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com" \
    --role=roles/bigquery.dataViewer

# Create the SQL instance
gcloud sql instances create $SQL_INSTANCE_NAME --database-version=POSTGRES_12 \
        --tier=db-g1-small \
        --region $GOOGLE_CLOUD_REGION
```

## Secrets
Your Cloud Run service will pull secrets from Google's Secret Manager and mount them as environment variables in the containers.

The public IP will be listed in the output of the previous command as "PRIMARY IP". Copy the new instance's public IP from the command line and then export it to the current working environment.

```bash
export SQL_INSTANCE_IP=<PUBLIC_IP>

printf $SUPERSET_CLOUD_CONNECTION_STRING | gcloud secrets create superset-connection-string --data-file=- \
    --replication-policy=user-managed \
    --locations=$GOOGLE_CLOUD_REGION

printf $SUPERSET_SECRET_KEY | gcloud secrets create superset-secret-key --data-file=- \
    --replication-policy=user-managed \
    --locations=$GOOGLE_CLOUD_REGION

printf $GOOGLE_CLIENT_ID | gcloud secrets create google-client-id --data-file=- \
    --replication-policy=user-managed \
    --locations=$GOOGLE_CLOUD_REGION

printf $GOOGLE_CLIENT_SECRET | gcloud secrets create google-client-secret --data-file=- \
    --replication-policy=user-managed \
    --locations=$GOOGLE_CLOUD_REGION
```


## Give the service account access to the secrets

```bash
gcloud secrets add-iam-policy-binding projects/$GOOGLE_CLOUD_PROJECT/secrets/superset-connection-string \
    --member serviceAccount:$GOOGLE_SERVICE_ACCOUNT@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com \
    --role roles/secretmanager.secretAccessor

gcloud secrets add-iam-policy-binding projects/$GOOGLE_CLOUD_PROJECT/secrets/superset-secret-key \
    --member serviceAccount:$GOOGLE_SERVICE_ACCOUNT@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com \
    --role roles/secretmanager.secretAccessor

gcloud secrets add-iam-policy-binding projects/$GOOGLE_CLOUD_PROJECT/secrets/google-client-id \
    --member serviceAccount:$GOOGLE_SERVICE_ACCOUNT@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com \
    --role roles/secretmanager.secretAccessor

gcloud secrets add-iam-policy-binding projects/$GOOGLE_CLOUD_PROJECT/secrets/google-client-secret \
    --member serviceAccount:$GOOGLE_SERVICE_ACCOUNT@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com \
    --role roles/secretmanager.secretAccessor
```

## Metadata database
Before you deploy Superset to Cloud Run, you need to seed a metadata database. This will be a PostgreSQL database that stores things such as your chart configurations, users, roles, and permissions. The below steps assume you already have a PostgreSQL Cloud SQL instance created.

```bash

# create database for superset metadata
gcloud sql databases create $SQL_DATABASE_NAME --instance=$SQL_INSTANCE_NAME

# Create the Superset user
gcloud sql users create superset --password $SQL_PASSWORD -i  $SQL_INSTANCE_NAME

# connect to cloud sql instance via cloud sql proxy
/cloud_sql_proxy -instances=$INSTANCE_ID=tcp:$PORT
```
**Open another terminal to keep proxy running while executing the next command**
```bash

# initialize superset database
superset db upgrade
```

## Cloud Run
The commands below will push a Docker image to a Google Artifact Registry within the Google Cloud project. A Cloud Run service will then be created to deploy that image.

```bash

# create artifact registry repository
gcloud artifacts repositories create $GOOGLE_ARTIFACT_REPO \
    --project=$GOOGLE_CLOUD_PROJECT \
    --repository-format=docker \
    --location=$GOOGLE_CLOUD_REGION \
    --description="Docker repository"

gcloud builds submit \
    --tag $GOOGLE_CLOUD_REGION-docker.pkg.dev/$GOOGLE_CLOUD_PROJECT/$GOOGLE_ARTIFACT_REPO/$SQL_INSTANCE_NAME src/.

gcloud run deploy superset \
    --image=$GOOGLE_CLOUD_REGION-docker.pkg.dev/$GOOGLE_CLOUD_PROJECT/$GOOGLE_ARTIFACT_REPO/$SQL_INSTANCE_NAME \
    --allow-unauthenticated \
    --port=8088 \
    --cpu=4 \
    --memory=8192Mi \
    --min-instances=0 \
    --max-instances=1 \
    --set-secrets=CONNECTION_STRING=superset-connection-string:latest,SECRET_KEY=superset-secret-key:latest,GOOGLE_ID=google-client-id:latest,GOOGLE_SECRET=google-client-secret:latest \
    --set-cloudsql-instances $INSTANCE_ID \
    --platform=managed \
    --service-account $GOOGLE_SERVICE_ACCOUNT@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com \
    --region=$GOOGLE_CLOUD_REGION

```

After running the `gcloud run` command above, you will recieve a Google Cloud Run service URL. Head back to APIs & Services > Credentials, edit your credential, and update the *Authorized redirect URI* to *`<CLOUD-RUN-URL>`/oauth-authorized/google*

Navigate to your Cloud Run service URL. This will authenticate you as an admin of the Superset deployment. Once you've done that, you will need to run the steps below to lock down the deployment.

## Refresh Superset roles
Update `AUTH_USER_REGISTRATION_ROLE` in `superset_config.py` to "Public". All new accounts moving forward will default to Public and no longer Admin. 

```bash

# create roles and grant permissions
superset init

# push an updated image to artifact registry
gcloud builds submit \
    --tag $GOOGLE_CLOUD_REGION-docker.pkg.dev/$GOOGLE_CLOUD_PROJECT/$GOOGLE_ARTIFACT_REPO/$SQL_INSTANCE_NAME src/.

gcloud run deploy superset \
    --image=$GOOGLE_CLOUD_REGION-docker.pkg.dev/$GOOGLE_CLOUD_PROJECT/superset-repo/superset:latest \
    --allow-unauthenticated \
    --port=8088 \
    --cpu=4 \
    --memory=8192Mi \
    --min-instances=1 \
    --max-instances=1 \
    --set-secrets=CONNECTION_STRING=superset-connection-string:latest,SECRET_KEY=superset-secret-key:latest,GOOGLE_ID=google-client-id:latest,GOOGLE_SECRET=google-client-secret:latest \
    --set-cloudsql-instances $INSTANCE_ID \
    --platform=managed \
    --service-account $GOOGLE_SERVICE_ACCOUNT@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com \
    --region=$GOOGLE_CLOUD_REGION

```
