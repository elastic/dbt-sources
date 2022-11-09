import pandas as pd
import os, subprocess, shutil

# raw schemata is version controlled in schemata.csv
df = pd.read_csv("schemata.csv")

# create generate_source files
for row in df['raw_name']:
    codegen_file = f"../../analyses/{row}.sql"
    codegen = "{" + f"{{ codegen.generate_source(schema_name='{row}',database_name='elastic-bi') }}" + "}"
    with open(codegen_file, 'w') as f:
        f.write(codegen)

# create directory if not exists
for row in df['stg_name']:
    dir = f"../../models/stage/{row}"
    if os.path.exists(dir):
        None
    else:
        os.makedirs(dir)

# dbt clean && dbt deps
subprocess.run("dbt clean && dbt deps", cwd="../..", stdout=subprocess.PIPE, shell=True)

# compile dbt
subprocess.run("dbt compile -t prod", cwd="../..", stdout=subprocess.PIPE, shell=True)

# copy compiled yml to each directory (overwrite if exists)
directory = "../../target/compiled/elastic_dbt_sources/analyses"
new_directory = "../../models/stage"
for index, row in df.iterrows():
    for filename in os.listdir(directory):
        if os.path.splitext(filename)[0] == row['raw_name']:
            shutil.copyfile(f"{directory}/{filename}", f"{new_directory}/{row['stg_name']}/source.yml")

# clean up `./analyses` folder
cleanup_dir =  f"../../analyses"
filelist = [ f for f in os.listdir(cleanup_dir)]
for f in filelist:
    os.remove(os.path.join(cleanup_dir, f))

# compile dbt
subprocess.run("dbt compile -t prod", cwd="../..", stdout=subprocess.PIPE, shell=True)