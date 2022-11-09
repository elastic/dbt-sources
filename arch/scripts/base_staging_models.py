from pandas import json_normalize
import pandas as pd
import os, subprocess, shutil, json

# generate manifest for iterating over
subprocess.run("dbt clean && dbt deps", cwd="../..", stdout=subprocess.PIPE, shell=True)
subprocess.run("dbt compile --profiles-dir . -t prod", cwd="../..", stdout=subprocess.PIPE, shell=True)

# clean dataframe and combine with schemata
df = pd.read_json('../../target/manifest.json')
df1 = json_normalize(json.loads(df.to_json(orient='records')), sep='_')
df2 = pd.DataFrame().assign(raw_name=df1['sources_schema'], sources_name=df1['sources_name'])
df2 = df2[df2['sources_name'].notna()]
manifest_df = df2.reset_index(drop=True)
schemata_df = pd.read_csv("schemata.csv")
combined_df = pd.merge(manifest_df, schemata_df, how='inner', on='raw_name')

# create directory if not exists
for row in combined_df['stg_name']:
    dir = f"../../models/stage/{row}"
    if os.path.exists(dir):
        None
    else:
        os.makedirs(dir)

# create generate_source files
for index, row in combined_df.iterrows():
    codegen_file = f"../../analyses/{row['stg_name']}__{row['sources_name']}.sql"
    codegen = "{" + f"{{ codegen.generate_base_model(source_name='{row['raw_name']}',table_name='{row['sources_name']}') }}" + "}"
    with open(codegen_file, 'w') as f:
        f.write(codegen)

# compile sql
subprocess.run("dbt clean && dbt deps", cwd="../..", stdout=subprocess.PIPE, shell=True)
subprocess.run("dbt compile --profiles-dir . -t prod", cwd="../..", stdout=subprocess.PIPE, shell=True)

# copy compiled yml to each directory (overwrite if exists)
directory = "../../target/compiled/elastic_dbt_sources/analyses"
new_directory = "../../models/stage"
for index, row in combined_df.iterrows():
    for filename in os.listdir(directory):
        if os.path.splitext(filename)[0] == f"{row['stg_name']}__{row['sources_name']}":
            shutil.copyfile(f"{directory}/{filename}", f"{new_directory}/{row['stg_name']}/{row['stg_name']}__{row['sources_name']}.sql")

# clean up `./analyses` folder
cleanup_dir =  f"../../analyses"
filelist = [ f for f in os.listdir(cleanup_dir)]
for f in filelist:
    os.remove(os.path.join(cleanup_dir, f))

# test compilation
subprocess.run("dbt clean && dbt deps", cwd="../..", stdout=subprocess.PIPE, shell=True)
subprocess.run("dbt compile --profiles-dir . -t prod", cwd="../..", stdout=subprocess.PIPE, shell=True)