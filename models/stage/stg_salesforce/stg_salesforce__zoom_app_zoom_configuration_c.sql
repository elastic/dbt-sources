
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_configuration_c') }}

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
        setup_owner_id,
        system_modstamp,
        zoom_app_mail_default_from_address_c,
        zoom_app_phone_auto_save_call_logs_c,
        zoom_app_zoom_phone_call_log_config_ext_0_c,
        zoom_app_zoom_phone_call_log_config_ext_1_c,
        zoom_app_zoom_phone_call_log_config_ext_2_c,
        zoom_app_zoom_phone_call_log_config_ext_3_c,
        zoom_app_zoom_phone_call_log_config_ext_4_c,
        zoom_app_enable_hvs_c,
        zoom_app_zoom_phone_call_log_config_ext_5_c,
        zoom_app_zoom_phone_call_log_config_ext_6_c,
        zoom_app_zoom_phone_call_log_config_ext_7_c,
        zoom_app_enable_editable_contact_lead_c,
        zoom_app_zoom_phone_call_log_config_ext_8_c,
        zoom_app_zoom_phone_call_log_config_ext_9_c,
        zoom_app_hvs_disposition_field_c,
        zoom_app_phone_auto_save_sms_c,
        zoom_app_turn_off_internal_call_c

    from source

)

select * from renamed
