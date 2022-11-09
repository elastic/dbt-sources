
with source as (

    select * from {{ source('raw_netsuite', 'events1_history') }}

),

renamed as (

    select
        access_level,
        company_id,
        contact_id,
        customization_id,
        date_0,
        date_created,
        date_last_modified,
        event_extid,
        event_id,
        internal_case_notes,
        is_milestone,
        is_timed_event,
        location_0,
        message,
        next_due_date,
        next_step,
        opportunity_id,
        organizer_id,
        process_id,
        process_issue_id,
        related_customization_id,
        status,
        supportcase_id,
        title,
        vendor_select_id

    from source

)

select * from renamed
