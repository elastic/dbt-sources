import os, datetime, json
from google.oauth2 import service_account
import google.auth.transport.requests
import requests as r
import pandas as pd
from pandas import json_normalize
import tempfile
import pyarrow
from google.cloud import storage

credentials = service_account.Credentials.from_service_account_file(
    "keyfile.json", scopes=["https://www.googleapis.com/auth/cloud-platform"]
)
request = google.auth.transport.requests.Request()
credentials.refresh(request)
headers = {"Authorization": f"Bearer {credentials.token}"}
url = "https://bigquerydatatransfer.googleapis.com/v1/projects/elastic-bi/transferConfigs?dataSourceIds=scheduled_query"
data = r.get(url, headers=headers, timeout=(10, 200)).json()
df = pd.DataFrame(data["transferConfigs"])
config_id_df = df["name"].str.split("/", expand=True).rename(columns={5: "configId"})
configs = []
for index, row in config_id_df.iterrows():
    uri = f"https://bigquerydatatransfer.googleapis.com/v1/projects/elastic-bi/transferConfigs/{row['configId']}"
    response = r.get(uri, headers=headers, timeout=(10, 200)).json()
    configs.append(response)
df = pd.DataFrame(configs)  # json to dataframe
df1 = json_normalize(json.loads(df.to_json(orient="records")), sep="_")
df1["ingest_date"] = pd.to_datetime("today")
file = tempfile.gettempdir() + "/tempfile.parquet.gz"
df1.to_parquet(file, compression="gzip")
date = datetime.date.today()
storage_client = storage.Client.from_service_account_json("keyfile.json")
bucket = storage_client.bucket("edm-datalake")
blob = bucket.blob(f"scheduled_queries/{date}.parquet.gz")
blob.upload_from_filename(file)