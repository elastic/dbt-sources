
with source as (

    select * from {{ source('raw_netsuite_sa', 'tasks_history') }}

),

renamed as (

    select
        task_id,
        _fivetran_deleted,
        _fivetran_synced,
        assigned_id,
        customization_id,
        date_created,
        date_deleted,
        date_last_modified,
        due_date,
        estimated_hours,
        estimated_hours_override,
        internal_case_notes,
        is_milestone,
        isinactive,
        message,
        name,
        next_due_date,
        next_step,
        owner_id,
        priority,
        process_id,
        process_issue_id,
        related_customization_id,
        start_date,
        status,
        task_extid,
        taskorder,
        vendor_select_id,
        linked_transaction_id,
        fivetran_index,
        partition_date

    from source

)

select * from renamed
