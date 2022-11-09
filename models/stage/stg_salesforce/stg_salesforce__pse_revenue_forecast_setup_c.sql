
with source as (

    select * from {{ source('raw_salesforce', 'pse_revenue_forecast_setup_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_active_c,
        pse_exclude_opportunities_c,
        pse_exclude_resource_requests_on_project_c,
        pse_forecast_factor_batch_size_c,
        pse_opportunity_batch_size_c,
        pse_project_batch_size_c,
        pse_project_end_date_on_opportunity_c,
        pse_project_start_date_on_opportunity_c,
        pse_total_hours_field_on_project_c,
        system_modstamp,
        pse_version_grouping_primary_c,
        pse_exclude_opportunities_for_versions_c,
        pse_exclude_unscheduled_revenue_for_versions_c,
        pse_version_forecast_period_c,
        pse_custom_filter_field_set_c,
        pse_exclude_revenue_recognition_actuals_c,
        pse_hover_details_field_set_on_milestone_c,
        pse_include_best_case_c,
        pse_hover_details_field_set_on_opportunity_c,
        pse_include_worst_case_c,
        pse_retain_pending_revenue_in_closed_periods_c,
        pse_exclude_opportunity_probabilities_c,
        pse_opportunity_worst_case_threshold_c,
        pse_version_detail_batch_size_c,
        pse_respect_permission_controls_c,
        pse_opportunity_expected_case_threshold_c,
        pse_opportunity_best_case_threshold_c,
        pse_hover_details_field_set_on_project_c

    from source

)

select * from renamed
