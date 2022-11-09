
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_tasks_history') }}

),

renamed as (

    select
        projecttask_id,
        _fivetran_deleted,
        _fivetran_synced,
        actual_work,
        allocated_work,
        assigned_id,
        calculated_work,
        calculated_work_baseline,
        constraint_type,
        customization_id,
        date_deleted,
        date_last_modified,
        due_date,
        end_date,
        end_date_baseline,
        estimated_cost,
        estimated_cost_baseline,
        estimated_cost_baseline_frn,
        estimated_cost_foreign,
        estimated_work,
        estimated_work_baseline,
        finish_by_date,
        internal_case_notes,
        is_milestone,
        is_milestone_0,
        is_non_billable,
        is_on_critical_path,
        is_summary_task,
        isinactive,
        message,
        name,
        next_due_date,
        next_step,
        owner_id,
        parent_task_id,
        percent_complete,
        percent_complete_by_allocation,
        planned_work,
        planned_work_baseline,
        priority,
        process_id,
        process_issue_id,
        project_id,
        projecttask_extid,
        related_customization_id,
        slack_minutes,
        start_date,
        start_date_0,
        start_date_baseline,
        status,
        taskorder,
        use_calculated_billing_budget,
        use_calculated_cost_budget,
        vendor_select_id,
        linked_transaction_id,
        fivetran_index,
        partition_date

    from source

)

select * from renamed