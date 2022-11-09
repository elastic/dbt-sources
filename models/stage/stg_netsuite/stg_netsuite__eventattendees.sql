
with source as (

    select * from {{ source('raw_netsuite', 'eventattendees') }}

),

renamed as (

    select
        attendee_id,
        customization_id,
        event_id,
        internal_case_notes,
        is_milestone,
        next_due_date,
        next_step,
        process_id,
        process_issue_id,
        related_customization_id,
        status,
        vendor_select_id

    from source

)

select * from renamed
