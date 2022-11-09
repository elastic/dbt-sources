
with source as (

    select * from {{ source('raw_netsuite', 'resource_allocations') }}

),

renamed as (

    select
        allocation_type,
        allocation_unit,
        customer_id,
        customization_id,
        date_last_modified,
        end_date,
        internal_case_notes,
        is_inactive,
        is_milestone,
        next_due_date,
        next_step,
        notes,
        num_hours,
        num_percent,
        process_id,
        process_issue_id,
        project_id,
        project_task_id,
        related_customization_id,
        requestor_id,
        resource_allocation_extid,
        resource_allocation_id,
        resource_id,
        start_date,
        vendor_select_id

    from source

)

select * from renamed
