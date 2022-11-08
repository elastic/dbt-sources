# [Elastic's dbt Docs Site](https://elastic.github.io/dbt/)

- [Why dbt?](#why-dbt)
- [Command line cheat sheet](#command-line-cheat-sheet)
- [Project Organization](#project-organization)
- [Scheduling dbt build jobs](#scheduling-dbt-build-jobs)
- [Resources](#resources)

## Why dbt?

dbt, short for data build tool, is an open source project for managing data transformations in a data warehouse. Once data is loaded into a warehouse, dbt enables build, test, document, and trust all data in the datawarehouse. It also comes with a built in documentation site so we can democratize the knowledge we accumulated about our data to the consumers of data in the business.

The following links will give you an excellent overview of what dbt is:

- [What, exactly, is dbt?](https://blog.getdbt.com/what--exactly--is-dbt-/) - This is a less technical overview for understanding the tool
- [What is dbt?](https://docs.getdbt.com/docs/introduction) - This is a bit more technical and comes straight from the docs

But why do we use dbt? There are several reasons.

First is that it is an open source tool with a vibrant community just like Elastic! Choosing an open source tool enables us to collaborate with the larger data community and solve problems faster than if we had we gone with a proprietary solution.

Second, it was built with version control in mind. For Elastic, this is essential since we use the output of our CDW for running the company.

Third, it speaks the language of analysts - SQL. This increases the number of people that can contribute since SQL is becoming such a critical part of many people's jobs.

Finally, it enables teams to move faster by integrating [testing and documentation](https://docs.getdbt.com/docs/building-a-dbt-project/building-models/#testing-and-documenting-models) from the start.


## Command line cheat sheet

This is a simplified version of the [primary command reference](https://docs.getdbt.com/reference/dbt-commands/).

dbt specific:

- `dbt clean` - this will remove the /dbt_modules (populated when you run deps) and /target folder (populated when models are run)
- `dbt build` - regular build
- `dbt deps` - this will install all packages defined in packages.yml from source.
- Model selection syntax ([source](https://docs.getdbt.com/docs/model-selection-syntax)). Specifying models can save you a lot of time by only running/testing the models that you think are relevant. However, there is a risk that you'll forget to specify an important upstream dependency so it's a good idea to understand the syntax thoroughly:
    - `dbt build --select modelname` - will only build modelname
    - `dbt build --select +modelname` - will build modelname and all parents
    - `dbt build --select modelname+` - will build modelname and all children
    - `dbt build --select +modelname+` - will build modelname, and all parents and children
    - `dbt build --select @modelname` - will build modelname, all parents, all children, AND all parents of all children
    - `dbt build --exclude modelname` - will build all models except modelname
    - Note that all of these work with folder selection syntax too:
        - `dbt build --select folder` - will build all models in a folder
        - `dbt build --select folder.subfolder` - will build all models in the subfolder
        - `dbt build --select +folder.subfolder` - will build all models in the subfolder and all parents
    - `dbt build --full-refresh` - will refresh incremental models
    - `dbt test` - will run custom data tests and schema tests; TIP: dbt test takes the same --model and --exclude syntax referenced for dbt build
    - `dbt seed` - will load csv files specified in the data-paths directory into the data warehouse. Also see the seeds section of this guide
    - `dbt compile` - compiles all models. This isn't a command you will need to run regularly. dbt will compile the models when you run any models.
    - `dbt docs generate` - will generate documentation files in the ~/target/ directory.
    - `dbt docs server` -  will spin up a local webhost and launch the docs in your default web-browser

## Project Organization

[Tree](https://tree.nathanfriend.io/?s=(%27options!(%27f7cy4~fullP8h!false~trailingSlash4~rootDot4)~6(%276%27raw05lake%207d%20raw%7D%7Belastic-ent9prise-5-mgmtBstaging0staged%205B303%20tr7sform8ions%7DAmodels**marts%20*2fin7ce.*2hr.*2ga.%27)~v9sion!%271%27)*A2.0sem7tic%20lay9%7D0%20%7B2%20%203int9medi8e4!true5d8a6source!7an8at9erA%5CnB%7D*%01BA987654320.*)

## Scheduling dbt build jobs

To facilitate the scheduling of dbt jobs we utilize [Github Actions](https://docs.github.com/en/actions) to orchestrate our analytics engineering pipelines. You can add your model to one of the already scheduled builds by [tagging](https://docs.getdbt.com/reference/resource-configs/tags) it.

Example of tagging:
```
Jinja:

{{
  config(
    materialized = 'table',
	transient = false,
    tags=["daily"]
    )
}}
```

```
YAML:

models:
  analytics:
    +tags: "daily"
```

Current Tags:
```
hourly
daily
weekly
```

## Resources
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
