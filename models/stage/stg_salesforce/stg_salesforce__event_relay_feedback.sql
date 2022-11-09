
with source as (

    select * from {{ source('raw_salesforce', 'event_relay_feedback') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        error_identifier,
        error_message,
        error_time,
        event_relay_config_id,
        event_relay_number,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        num_events_dropped,
        num_events_relayed,
        remote_resource,
        replay,
        status,
        system_modstamp

    from source

)

select * from renamed
