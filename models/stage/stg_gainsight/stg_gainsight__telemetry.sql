
with source as (

    select * from {{ source('raw_gainsight', 'telemetry') }}

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
        type_id,
        sfdc_account_id,
        ingested_data

    from source

)

select * from renamed
