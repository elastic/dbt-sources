from app import es_to_gcs, month
import os, datetime
date = datetime.date.today()
month = month(date)
# elastic arguments
host = os.environ['ES_HOST']
index = f'kpi-deployments-hourly-all-{date.year}-{month}'
query = {"bool": {"must": [],"filter": [{"range": {"@timestamp": {"gte": f'{date}T04:00:00', "lt": f'{date}T05:00:00'}}}]}}
# google cloud arguments
bucket_name = 'edmdatalake'
destination_blob_name = f'cloud_kip_cluster/kpi-deployments-hourly-all/{date}.csv.gz'
# extract/load
es_to_gcs(host, index, query, bucket_name, destination_blob_name)