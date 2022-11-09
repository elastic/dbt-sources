
with source as (

    select * from {{ source('raw_gainsight', 'subscription_telementry') }}

),

renamed as (

    select
        cloud_user_id,
        user_docs,
        appsearch_engines,
        workplacesearch_engines,
        solution_security,
        solution_observability,
        solution_enterprise_search,
        usecase_security,
        usecase_observability,
        usecase_enterprise_search,
        last_updated,
        subscription_name,
        ingested_data

    from source

)

select * from renamed
