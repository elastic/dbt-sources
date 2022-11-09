
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_enhanced_detail_category_c_history') }}

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
        pse_actuals_c,
        pse_adjusted_value_c,
        pse_billings_expenses_c,
        pse_billings_milestones_c,
        pse_billings_misc_adjustments_c,
        pse_billings_timecards_c,
        pse_category_label_c,
        pse_forecast_enhanced_detail_c,
        pse_forecast_enhanced_override_c,
        pse_forecast_setup_category_c,
        pse_forecast_value_c,
        pse_override_created_by_c,
        pse_override_created_date_c,
        pse_override_notes_c,
        pse_override_value_c,
        pse_scheduled_assignments_c,
        pse_scheduled_backlog_c,
        pse_scheduled_held_resource_requests_c,
        pse_scheduled_milestones_c,
        pse_scheduled_unheld_resource_requests_c,
        pse_unscheduled_backlog_c,
        system_modstamp

    from source

)

select * from renamed
