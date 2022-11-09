
with source as (

    select * from {{ source('raw_saas_hosted_es', 'teamp_gainsight_job') }}

),

renamed as (

    select
        cloud_user_id,
        user_docs,
        appsearch_engines,
        workplacesearch_engines,
        last_updated,
        ingest

    from source

)

select * from renamed
