
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_webinar_history_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        zoom_app_is_attendeed_c,
        zoom_app_zoom_webinar_registrant_c,
        zoom_app_zoom_webinar_attendee_c,
        zoom_app_lead_c,
        zoom_app_zoom_webinar_c,
        zoom_app_webinar_topic_c,
        zoom_app_contact_c,
        zoom_app_zoom_webinar_panelist_c

    from source

)

select * from renamed
