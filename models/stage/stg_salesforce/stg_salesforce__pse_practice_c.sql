
with source as (

    select * from {{ source('raw_salesforce', 'pse_practice_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_action_update_current_time_period_c,
        pse_actuals_last_update_date_c,
        pse_actuals_last_updated_by_c,
        pse_backlog_last_update_date_c,
        pse_backlog_last_updated_by_c,
        pse_billable_external_hours_c,
        pse_billable_internal_hours_c,
        pse_billed_c,
        pse_billings_c,
        pse_bookings_c,
        pse_credited_non_billable_internal_hours_c,
        pse_current_time_period_c,
        pse_current_time_period_end_date_c,
        pse_default_work_calendar_c,
        pse_excluded_hours_c,
        pse_expense_budget_c,
        pse_expense_costs_c,
        pse_external_costs_c,
        pse_global_practice_c,
        pse_hierarchy_depth_c,
        pse_hist_sch_utilization_billable_hours_c,
        pse_hist_sch_utilization_credited_hours_c,
        pse_hist_sch_utilization_excluded_hours_c,
        pse_hist_sch_utilization_held_hours_c,
        pse_hist_sch_utilization_non_billable_hrs_c,
        pse_historical_utilization_billable_hours_c,
        pse_historical_utilization_c,
        pse_historical_utilization_calendar_hours_c,
        pse_historical_utilization_credited_hours_c,
        pse_historical_utilization_excluded_hours_c,
        pse_historical_utilization_non_billable_hrs_c,
        pse_historical_utilization_target_hours_c,
        pse_inactive_project_backlog_c,
        pse_include_in_forecasting_c,
        pse_internal_budget_c,
        pse_internal_costs_c,
        pse_invoiced_c,
        pse_non_billable_external_hours_c,
        pse_non_billable_internal_hours_c,
        pse_other_costs_c,
        pse_parent_practice_c,
        pse_pass_through_billings_c,
        pse_plan_last_update_date_c,
        pse_plan_last_updated_by_c,
        pse_planned_billings_c,
        pse_planned_bookings_c,
        pse_planned_external_costs_c,
        pse_planned_internal_costs_c,
        pse_planned_revenue_c,
        pse_planned_utilization_c,
        pse_practice_head_c,
        pse_practice_id_chain_c,
        pse_practice_name_chain_c,
        pse_pre_billed_c,
        pse_revenue_c,
        pse_scheduled_backlog_calculated_date_c,
        pse_scheduled_backlog_end_date_c,
        pse_scheduled_milestone_c,
        pse_scheduled_time_c,
        pse_scheduled_utilization_billable_hours_c,
        pse_scheduled_utilization_c,
        pse_scheduled_utilization_calendar_hours_c,
        pse_scheduled_utilization_credited_hours_c,
        pse_scheduled_utilization_excluded_hours_c,
        pse_scheduled_utilization_held_hours_c,
        pse_scheduled_utilization_non_billable_hrs_c,
        pse_scheduled_utilization_target_hours_c,
        pse_total_time_period_hours_c,
        pse_total_utilization_c,
        pse_unscheduled_backlog_c,
        pse_utilization_c,
        pse_utilization_calculation_date_c,
        pse_utilization_elapsed_hours_c,
        pse_utilization_last_calculation_date_c,
        pse_utilization_last_update_date_c,
        pse_utilization_last_updated_by_c,
        pse_utilization_over_full_time_period_c,
        pse_utilization_period_end_date_c,
        pse_utilization_period_start_date_c,
        pse_utilization_target_hours_c,
        system_modstamp,
        pse_historical_utilization_target_attainment_c,
        pse_historical_utilization_target_c,
        pse_margin_c,
        pse_planned_margin_c,
        pse_scheduled_utilization_target_attainment_c,
        pse_scheduled_utilization_target_c,
        pse_total_costs_c,
        pse_utilization_target_attainment_c,
        pse_utilization_target_c,
        pse_exclude_from_utilization_c,
        pse_reversed_id_chain_c

    from source

)

select * from renamed