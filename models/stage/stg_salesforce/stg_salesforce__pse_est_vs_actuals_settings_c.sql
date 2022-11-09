
with source as (

    select * from {{ source('raw_salesforce', 'pse_est_vs_actuals_settings_c') }}

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
        pse_adjust_past_est_on_records_with_actuals_c,
        pse_delete_est_vs_actuals_batch_size_c,
        pse_delete_out_of_range_records_with_actuals_c,
        pse_generate_custom_time_period_records_c,
        pse_generate_monthly_records_c,
        pse_generate_quarterly_records_c,
        pse_generate_weekly_records_c,
        pse_process_out_of_range_timecards_c,
        pse_timecard_statuses_c,
        pse_update_actuals_batch_size_c,
        pse_update_estimates_batch_size_c,
        pse_update_project_manager_batch_size_c,
        pse_update_project_manager_from_project_c,
        pse_update_project_manager_sync_limit_c,
        pse_use_week_time_periods_if_in_range_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
