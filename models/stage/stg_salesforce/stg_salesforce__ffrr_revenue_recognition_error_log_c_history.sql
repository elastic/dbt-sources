
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_recognition_error_log_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_process_c,
        ffrr_revenue_forecast_transaction_c,
        ffrr_revenue_recognition_transaction_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        ffrr_error_line_items_c,
        last_referenced_date,
        last_viewed_date

    from source

)

select * from renamed
