
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_allow_bulkification_c,
        ffirule_include_info_messages_in_logs_c,
        ffirule_license_key_c,
        ffirule_support_mode_c,
        ffirule_sync_enabled_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
