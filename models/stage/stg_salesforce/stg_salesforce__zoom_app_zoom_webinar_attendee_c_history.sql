
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_webinar_attendee_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        zoom_app_attentiveness_score_c,
        zoom_app_duration_c,
        zoom_app_duration_hh_mi_ss_c,
        zoom_app_join_time_c,
        zoom_app_leave_time_c,
        zoom_app_name_c,
        zoom_app_user_email_c,
        zoom_app_user_id_c,
        zoom_app_uuid_c,
        zoom_app_zoom_webinar_c,
        zoom_app_zoom_webinar_panelist_c,
        zoom_app_zoom_webinar_registrant_c

    from source

)

select * from renamed
