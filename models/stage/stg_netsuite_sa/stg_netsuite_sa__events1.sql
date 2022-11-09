
with source as (

    select * from {{ source('raw_netsuite_sa', 'events1') }}

),

renamed as (

    select
        event_id,
        _fivetran_deleted,
        _fivetran_synced,
        access_level,
        company_id,
        contact_id,
        customization_id,
        date_0,
        date_created,
        date_deleted,
        date_last_modified,
        event_extid,
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
        vendor_select_id,
        linked_transaction_id,
        fivetran_index

    from source

)

select * from renamed
