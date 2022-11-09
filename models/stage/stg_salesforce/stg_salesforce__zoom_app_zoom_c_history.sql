
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        zoom_app_disable_invitation_email_c,
        zoom_app_enable_password_c,
        zoom_app_enable_webinar_feature_c,
        zoom_app_external_zoom_meetings_c,
        zoom_app_get_zoom_meeting_information_c,
        zoom_app_login_type_c,
        zoom_app_populate_details_into_event_description_c,
        zoom_app_zoom_api_key_c,
        zoom_app_zoom_api_secret_c,
        zoom_app_zoom_service_env_c,
        zoom_app_zoom_url_c

    from source

)

select * from renamed
