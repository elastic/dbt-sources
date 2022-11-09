
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_enhanced_detail_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_billings_budgets_c,
        pse_billings_expenses_c,
        pse_billings_milestones_c,
        pse_billings_misc_adjustments_c,
        pse_billings_timecards_c,
        pse_forecast_enhanced_calculation_c,
        pse_opportunity_c,
        pse_parent_summary_c,
        pse_perpetual_backlog_budgets_c,
        pse_perpetual_backlog_held_rr_c,
        pse_perpetual_backlog_unheld_rr_c,
        pse_perpetual_billings_budgets_c,
        pse_perpetual_billings_expenses_c,
        pse_perpetual_billings_milestones_c,
        pse_perpetual_billings_misc_adjustments_c,
        pse_perpetual_billings_timecards_c,
        pse_project_c,
        pse_scheduled_assignments_c,
        pse_scheduled_held_resource_requests_c,
        pse_scheduled_milestones_c,
        pse_scheduled_unheld_resource_requests_c,
        pse_unscheduled_backlog_c,
        pse_unscheduled_revenue_c,
        system_modstamp

    from source

)

select * from renamed
