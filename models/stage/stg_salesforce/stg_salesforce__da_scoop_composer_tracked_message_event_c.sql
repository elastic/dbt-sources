
with source as (

    select * from {{ source('raw_salesforce', 'da_scoop_composer_tracked_message_event_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        da_scoop_composer_device_c,
        da_scoop_composer_device_os_c,
        da_scoop_composer_email_client_c,
        da_scoop_composer_ip_address_c,
        da_scoop_composer_tracked_message_c,
        da_scoop_composer_type_c,
        da_scoop_composer_user_agent_c,
        da_scoop_composer_when_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
