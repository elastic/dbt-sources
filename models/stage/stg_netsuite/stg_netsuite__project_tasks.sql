
with source as (

    select * from {{ source('raw_netsuite', 'project_tasks') }}

),

renamed as (

    select
        actual_work,
        allocated_work,
        assigned_id,
        calculated_work,
        calculated_work_baseline,
        constraint_type,
        customization_id,
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
        isinactive,
        is_milestone,
        is_milestone_0,
        is_non_billable,
        is_on_critical_path,
        is_summary_task,
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
        projecttask_extid,
        projecttask_id,
        project_id,
        related_customization_id,
        slack_minutes,
        start_date,
        start_date_0,
        start_date_baseline,
        status,
        taskorder,
        use_calculated_billing_budget,
        use_calculated_cost_budget,
        vendor_select_id

    from source

)

select * from renamed
