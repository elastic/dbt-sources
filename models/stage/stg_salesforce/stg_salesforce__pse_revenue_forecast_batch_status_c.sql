
with source as (

    select * from {{ source('raw_salesforce', 'pse_revenue_forecast_batch_status_c') }}

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
        name,
        owner_id,
        pse_opportunity_c,
        pse_record_id_c,
        pse_revenue_forecast_batch_update_pending_c,
        pse_revenue_forecast_last_updated_c,
        pse_revenue_forecast_processing_status_c,
        system_modstamp

    from source

)

select * from renamed
