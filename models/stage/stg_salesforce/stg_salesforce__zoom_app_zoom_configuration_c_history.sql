
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_configuration_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        zoom_app_mail_default_from_address_c,
        zoom_app_phone_auto_save_call_logs_c,
        zoom_app_zoom_phone_call_log_config_ext_0_c,
        zoom_app_zoom_phone_call_log_config_ext_1_c,
        zoom_app_zoom_phone_call_log_config_ext_2_c,
        zoom_app_zoom_phone_call_log_config_ext_3_c,
        zoom_app_zoom_phone_call_log_config_ext_4_c

    from source

)

select * from renamed
