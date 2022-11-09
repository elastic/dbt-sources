
with source as (

    select * from {{ source('raw_netsuite', 'calls') }}

),

renamed as (

    select
        call_date,
        call_extid,
        call_id,
        case_id,
        company_id,
        contact_id,
        customization_id,
        date_completed,
        date_created,
        date_last_modified,
        internal_case_notes,
        is_milestone,
        next_due_date,
        next_step,
        note,
        opportunity_id,
        organizer_id,
        owner_id,
        phone,
        process_id,
        process_issue_id,
        related_customization_id,
        status,
        subject,
        vendor_select_id

    from source

)

select * from renamed
