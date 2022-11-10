def es_to_gcs(host, index, query, bucket_name, destination_blob_name):
    import eland as ed
    df = ed.DataFrame(host, index).es_query(query) # get data
    cols = df.columns.to_list()
    header = [col.replace('.', '_') for col in cols] # clean up columns so BQ doesn't bark
    import tempfile
    file = tempfile.gettempdir() + 'tempfile.csv.gz'
    df.to_csv(file, sep='\t', header=header, compression={
              'method': 'gzip', 'compresslevel': 1, 'mtime': 1}) # drop csv to temp directory
    from google.cloud import storage
    storage_client = storage.Client.from_service_account_json("keyfile.json")
    bucket = storage_client.bucket(bucket_name)
    blob = bucket.blob(destination_blob_name)
    blob.upload_from_filename(file) # upload csv
    return print(f"File {file} uploaded to {destination_blob_name}.")

def month(date):
    if date.month in (10 , 11, 12):
        month = date.month
    else:
        month = '{:02d}'.format(date.month)
    return month