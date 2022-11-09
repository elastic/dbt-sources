
with source as (

    select * from {{ source('raw_salesforce', 'pse_est_vs_actuals_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        pse_actual_billable_amount_c,
        pse_actual_days_aggregated_c,
        pse_actual_days_c,
        pse_actual_hours_c,
        pse_assignment_c,
        pse_end_date_c,
        pse_estimated_days_c,
        pse_estimated_hours_c,
        pse_project_c,
        pse_project_manager_c,
        pse_resource_c,
        pse_start_date_c,
        pse_time_period_c,
        pse_time_period_type_c,
        pse_timecards_submitted_c,
        system_modstamp,
        psa_report_actual_billings_c,
        psa_report_ev_a_variance_c,
        psa_report_scheduled_billings_c,
        pse_actual_average_bill_rate_c,
        pse_days_percent_variance_c,
        pse_days_variance_c,
        pse_percent_variance_c,
        pse_scheduled_bill_rate_c,
        pse_scheduled_bill_rate_is_daily_rate_c,
        pse_variance_c,
        pse_project_currency_exchange_rate_c,
        pse_resource_request_bill_rate_c,
        pse_resource_request_c,
        pse_resource_request_days_c,
        pse_resource_request_hours_c,
        psaws_end_date_is_last_sunday_c,
        psaws_high_hours_percent_variance_c,
        psaws_project_manager_is_current_user_c

    from source

)

select * from renamed
