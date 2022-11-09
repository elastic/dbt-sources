
with source as (

    select * from {{ source('raw_netsuite_sa', 'eventattendees_history') }}

),

renamed as (

    select
        _fivetran_id,
        event_id,
        _fivetran_synced,
        attendee_id,
        customization_id,
        internal_case_notes,
        is_milestone,
        next_due_date,
        next_step,
        process_id,
        process_issue_id,
        related_customization_id,
        status,
        vendor_select_id,
        linked_transaction_id,
        _fivetran_deleted,
        date_deleted,
        fivetran_index,
        partition_date

    from source

)

select * from renamed
