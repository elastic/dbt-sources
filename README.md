# [Elastic's dbt Docs Site](https://elastic.github.io/dbt/)

- [Why dbt?](#why-dbt)
- [Keeping Sources Up to Date](#keeping-sources-up-to-date)
- [Releases](#releases)
- [build_sources.py](#build_sources.py)
- [Resources](#resources)

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

##### build_sources.py

- create generate_source files
- create directory if not exists
    - `models/stage/stg_<raw_source_name>`
- compile dbt
- copy compiled yml to each directory (overwrite if exists)
    - `models/stage/stg_<raw source name>/source.yml`
- clean up `./analyses` folder

## Resources
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
