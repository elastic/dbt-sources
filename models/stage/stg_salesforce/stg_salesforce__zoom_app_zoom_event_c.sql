
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_event_c') }}

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
        name,
        owner_id,
        system_modstamp,
        zoom_app_is_external_c,
        zoom_app_host_id_c,
        zoom_app_start_url_c,
        zoom_app_uuid_c,
        zoom_app_zoom_meeting_status_c,
        zoom_app_participants_c,
        zoom_app_start_url_3_c,
        zoom_app_meeting_type_c,
        zoom_app_meeting_topic_c,
        zoom_app_participant_count_c,
        zoom_app_zoom_meeting_id_c,
        zoom_app_send_email_c,
        zoom_app_zoom_meeting_start_time_c,
        zoom_app_start_url_1_c,
        zoom_app_start_url_2_c,
        zoom_app_duration_mins_c,
        zoom_app_zoom_meeting_password_c,
        zoom_app_google_event_id_c,
        zoom_app_zoom_meeting_end_time_c,
        zoom_app_is_zoom_meeting_c,
        zoom_app_zoom_meeting_creation_status_c,
        zoom_app_join_url_c

    from source

)

select * from renamed
