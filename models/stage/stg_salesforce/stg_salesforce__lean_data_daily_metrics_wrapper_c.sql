
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_daily_metrics_wrapper_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_dashboard_counts_info_c,
        lean_data_date_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
