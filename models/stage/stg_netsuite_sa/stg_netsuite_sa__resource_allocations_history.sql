
with source as (

    select * from {{ source('raw_netsuite_sa', 'resource_allocations_history') }}

),

renamed as (

    select
        fivetran_index,
        resource_id,
        _fivetran_deleted,
        _fivetran_synced,
        allocation_type,
        allocation_unit,
        customer_id,
        customization_id,
        date_deleted,
        date_last_modified,
        end_date,
        internal_case_notes,
        is_inactive,
        is_milestone,
        linked_transaction_id,
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
        start_date,
        vendor_select_id,
        partition_date

    from source

)

select * from renamed
