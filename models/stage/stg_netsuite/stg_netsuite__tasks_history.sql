
with source as (

    select * from {{ source('raw_netsuite', 'tasks_history') }}

),

renamed as (

    select
        assigned_id,
        customization_id,
        date_created,
        date_last_modified,
        due_date,
        estimated_hours,
        estimated_hours_override,
        internal_case_notes,
        isinactive,
        is_milestone,
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
        taskorder,
        task_extid,
        task_id,
        vendor_select_id

    from source

)

select * from renamed
