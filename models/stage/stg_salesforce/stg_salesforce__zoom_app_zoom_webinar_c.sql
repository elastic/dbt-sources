
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_webinar_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        zoom_app_duration_c,
        zoom_app_start_time_c,
        zoom_app_topic_c,
        zoom_app_status_c,
        zoom_app_start_url_c,
        zoom_app_create_campaign_for_each_webinar_c,
        zoom_app_uuid_c,
        zoom_app_register_url_c,
        zoom_app_number_of_participants_c,
        zoom_app_uuid_unique_c,
        zoom_app_setting_approval_type_c,
        zoom_app_setting_close_registration_c,
        zoom_app_agenda_c,
        zoom_app_actual_end_time_c,
        zoom_app_webinar_id_c,
        zoom_app_setting_panelists_video_on_c,
        zoom_app_actual_start_time_c,
        zoom_app_setting_allow_multiple_devices_c,
        zoom_app_password_c,
        zoom_app_google_calendar_event_id_c,
        zoom_app_setting_host_video_on_c,
        zoom_app_end_time_c,
        zoom_app_setting_practice_session_c,
        zoom_app_create_new_lead_c,
        zoom_app_creation_status_c,
        zoom_app_join_url_c,
        zoom_app_add_registrants_as_campaign_members_c

    from source

)

select * from renamed
