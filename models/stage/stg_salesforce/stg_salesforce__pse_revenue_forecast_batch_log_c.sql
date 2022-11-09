
with source as (

    select * from {{ source('raw_salesforce', 'pse_revenue_forecast_batch_log_c') }}

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
        pse_message_c,
        pse_project_c,
        pse_revenue_forecast_batch_c,
        system_modstamp,
        pse_opportunity_c

    from source

)

select * from renamed
