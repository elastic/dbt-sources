
with source as (

    select * from {{ source('raw_salesforce', 'pse_utilization_summary_c') }}

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
        pse_actual_credited_hours_c,
        pse_actual_excluded_hours_c,
        pse_actual_non_billable_hours_c,
        pse_assigned_billable_hours_c,
        pse_assigned_credited_hours_c,
        pse_assigned_excluded_hours_c,
        pse_assigned_non_billable_hours_c,
        pse_calendar_hours_c,
        pse_group_c,
        pse_held_hours_c,
        pse_held_hours_opp_pct_weighted_c,
        pse_practice_c,
        pse_region_c,
        pse_resource_role_c,
        pse_target_hours_c,
        pse_template_key_c,
        pse_time_period_c,
        pse_type_c,
        pse_unheld_hours_c,
        pse_unheld_hours_opp_pct_weighted_c,
        pse_utilization_calculation_c,
        system_modstamp,
        psa_report_period_ending_c,
        psa_report_remaining_capacity_hours_c,
        pse_remaining_capacity_c,
        pse_total_hours_c,
        pse_total_hours_opp_pct_weighted_c,
        time_period_type_c

    from source

)

select * from renamed
