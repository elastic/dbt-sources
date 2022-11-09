
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_detail_c') }}

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
        owner_id,
        pse_billings_budgets_c,
        pse_billings_expenses_c,
        pse_billings_milestones_c,
        pse_billings_misc_adjustments_c,
        pse_billings_timecards_c,
        pse_category_1_c,
        pse_category_2_c,
        pse_category_3_c,
        pse_category_4_c,
        pse_category_5_c,
        pse_category_6_c,
        pse_category_7_c,
        pse_forecast_calculation_c,
        pse_opportunity_c,
        pse_override_category_1_c,
        pse_override_category_2_c,
        pse_override_category_3_c,
        pse_override_category_4_c,
        pse_override_category_5_c,
        pse_override_category_6_c,
        pse_override_category_7_c,
        pse_percent_override_category_1_c,
        pse_percent_override_category_2_c,
        pse_percent_override_category_3_c,
        pse_percent_override_category_4_c,
        pse_percent_override_category_5_c,
        pse_percent_override_category_6_c,
        pse_percent_override_category_7_c,
        pse_perpetual_backlog_budgets_c,
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
        system_modstamp

    from source

)

select * from renamed
