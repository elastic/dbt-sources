### Keeping Sources Up to Date

- All raw sources should be in schemata.csv with a name for both the raw and stg schema
    - new raw sources: 
        - add the raw and stg schema names to the bottom of the csv
        - run source.py
        - run `dbt compile`
        - run `git diff`
    - based on if there are removed sources proceed to [Releases](#releases).

#### Releases

- Non breaking Changes
    - commit/push
    - pr/test/merge
    - generate new release
        - example: `v1.0.6` --> `v1.0.7`

- Breaking Changes (source removed):
    - remove base stage model
    - remove docs blocks 
    - dbt compile
    - generate new release 
        - example: `v1.0.7` --> `v1.1.0`

##### sources.py

- create generate_source files
- create directory if not exists
    - `models/stage/stg_<raw_source_name>`
- compile dbt
- copy compiled yml to each directory (overwrite if exists)
    - `models/stage/stg_<raw source name>/source.yml`
- clean up `./analyses` folder