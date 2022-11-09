
with source as (

    select * from {{ source('raw_saas_hosted_es', 'temp_gainsight_history') }}

),

renamed as (

    select
        ingest,
        appsearch_engines,
        cloud_user_id,
        last_updated,
        user_docs,
        workplacesearch_engines

    from source

)

select * from renamed
