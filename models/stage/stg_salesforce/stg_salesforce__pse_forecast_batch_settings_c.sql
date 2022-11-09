
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_batch_settings_c') }}

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
        pse_forecast_batch_size_c,
        pse_maximum_queue_size_c,
        pse_notifications_chatter_c,
        pse_notifications_email_c,
        pse_notifications_recipients_c,
        pse_notifications_task_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
