
# SaaS Hosted ElasticSearch KPI data

  

## Base Code

  

[Powered By Python](https://python.org)

  

### Requirements

- [Eland v8.3](https://eland.readthedocs.io/en/latest/)

	- Allows interfacing with ElasticSearch through a pandas dataframe without storing the data in your local memory.

	- Of note for this specific use case is that the column names come back dot notated for nested structures in Elastic. Most databases and file formats that are used for performant I/O (Snowflake, BigQuery, parquet, avro, etc) do not support dot notated columns. Due to this I went the route of remapping the cleaned up column names to a csv with a compression level of one. This allows for fast compression so the code is performant, stores around 6x less data, and allows us to only store the data in memory once during the code run. (See line's 6 through 13 in [app.py](app.py)). Ingest could be improved by loading from Eland dataframe directly to parquet, but this feature is not currently availabe.

- [Google Cloud Storage v2.5](https://pypi.org/project/google-cloud-storage/)

	- Allows interfacing with Google Cloud Storage.

	- Maximum file size upload to Google Cloud Storage is 5GB

	- Bucket Name and File Name are required arguements. Append folders to the front of `destination_blob_name` if subdirectories are needed.

  

### Production

See the top level readme in the `load/` directory.

  

### Local Development

- All `.ipynb` files have been added to `.gitignore`. I use them for running the code and debugging and don't want them in version control.

- Change directories in your command line to the folder holding the code `cd load/saas_hosted_es/`

- Create a virtual environment `python3 -m venv .venv`

- Start the virtual environment `source .venv/bin/activate`

- Install the required python packages `pip install -r requirements.txt`

	- `pip install jupyter~=1.0` if you'd like to use `jupyter` within VS Code

	- if you plan to use `jupyter` to debug/test your code set environment variables using [`%env`](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-env) magic as system or virtual environment variable are not available to notebook since it creates an temporary shell to work within for security reasons.

- Create a python notebook file `.ipynb` and copy the code from the relevant `.py` file.

- Add env vars at the top level. 
- Update the arguments as needed for the ElasticSearch portion of the code.

	- Auth is included in the `host` variable and is formatted as `https://<username>:<password>@<hostname>:<port>`

	- `index` is the index you want to get data from

	- `query` is the query you'd like to return in the dataframe. You can test these in Management > DevTools > Console in the Kibana UI. Reference to the query syntax can be found [here](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html).

- For Google Cloud Auth you will need to set the environment variable `GOOGLE_APPLICATION_CREDENTIALS` to the path of the file that contains your service account's json key.

- You many also want to change the `bucket_name` and `destination_blob_name` if you are testing or not loading from the source.

- The code in `app.py` holds reusable code and accepts the arguments you need to load data. Please don't edit these functions unless you know what you are doing.

  
  

### Future Enhancements

  

- How do we get data from Eland directly into parquet? Due to Eland limiations we currently have to convert to pandas dataframe then convert to parquet which is not very performant.