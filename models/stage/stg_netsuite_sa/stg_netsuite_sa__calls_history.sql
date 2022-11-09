
with source as (

    select * from {{ source('raw_netsuite_sa', 'calls_history') }}

),

renamed as (

    select
        call_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        call_date,
        call_extid,
        case_id,
        company_id,
        contact_id,
        customization_id,
        date_completed,
        date_created,
        date_deleted,
        date_last_modified,
        internal_case_notes,
        is_milestone,
        linked_transaction_id,
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
        vendor_select_id,
        partition_date

    from source

)

select * from renamed
