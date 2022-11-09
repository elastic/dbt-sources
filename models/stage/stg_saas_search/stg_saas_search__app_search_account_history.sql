
with source as (

    select * from {{ source('raw_saas_search', 'app_search_account_history') }}

),

renamed as (

    select
        id,
        email,
        ip_address,
        last_login_at,
        total_queries_last_30_days,
        total_api_operations_last_30_days,
        total_documents,
        created_at,
        has_ever_paid,
        active_free_trial,
        subscription,
        last_sync_at,
        partition_date

    from source

)

select * from renamed
