
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_worksheet_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_actual_billable_hours_c,
        pse_actual_expenses_c,
        pse_actual_expenses_external_c,
        pse_actual_milestone_c,
        pse_actual_miscellaneous_adjustments_c,
        pse_actual_timecard_c,
        pse_actual_timecard_external_c,
        pse_backlog_milestone_c,
        pse_backlog_scheduled_c,
        pse_backlog_unscheduled_c,
        pse_bill_rate_c,
        pse_forecast_c,
        pse_group_c,
        pse_period_total_c,
        pse_period_total_with_expenses_c,
        pse_practice_c,
        pse_project_c,
        pse_region_c,
        pse_run_rate_c,
        pse_run_rate_with_expenses_c,
        pse_running_total_c,
        pse_running_total_with_expenses_c,
        pse_sales_opps_high_c,
        pse_sales_opps_low_c,
        pse_sales_opps_medium_c,
        pse_submitted_expenses_c,
        pse_submitted_expenses_external_c,
        pse_submitted_timecard_c,
        pse_submitted_timecard_external_c,
        pse_time_period_c,
        system_modstamp

    from source

)

select * from renamed
