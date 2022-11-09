
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_ihccintegration_queue_event_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_direction_c,
        fferpcore_enqueued_datetime_c,
        fferpcore_integration_id_c,
        fferpcore_last_processed_datetime_c,
        fferpcore_message_content_c,
        fferpcore_message_timestamp_c,
        fferpcore_retry_count_c,
        fferpcore_status_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
