
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_voice_user_c_history') }}

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
        owner_id,
        system_modstamp,
        zoom_app_access_token_c,
        zoom_app_check_plan_time_stamp_c,
        zoom_app_has_zoom_voice_call_plan_c,
        zoom_app_ip_address_c,
        zoom_app_login_status_c,
        zoom_app_pbx_user_id_c,
        zoom_app_refresh_token_c,
        zoom_app_sfdc_user_email_c,
        zoom_app_web_user_id_c,
        zoom_app_zoom_user_email_c

    from source

)

select * from renamed
