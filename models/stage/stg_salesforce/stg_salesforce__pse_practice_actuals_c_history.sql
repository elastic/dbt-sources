
with source as (

    select * from {{ source('raw_salesforce', 'pse_practice_actuals_c_history') }}

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
        name,
        pse_billable_external_hours_c,
        pse_billable_internal_hours_c,
        pse_billed_c,
        pse_billings_c,
        pse_bookings_c,
        pse_credited_non_billable_internal_hours_c,
        pse_excluded_hours_c,
        pse_expense_budget_c,
        pse_expense_costs_c,
        pse_external_costs_c,
        pse_internal_budget_c,
        pse_internal_costs_c,
        pse_invoiced_c,
        pse_is_verification_c,
        pse_non_billable_external_hours_c,
        pse_non_billable_internal_hours_c,
        pse_other_costs_c,
        pse_pass_through_billings_c,
        pse_practice_c,
        pse_pre_billed_c,
        pse_revenue_c,
        pse_scheduled_backlog_calculated_date_c,
        pse_scheduled_milestone_c,
        pse_scheduled_time_c,
        pse_time_period_c,
        pse_unique_name_c,
        pse_unscheduled_backlog_c,
        pse_verified_by_c,
        system_modstamp,
        pse_end_date_c,
        pse_margin_c,
        pse_practice_head_c,
        pse_start_date_c,
        pse_time_period_type_c,
        pse_total_costs_c

    from source

)

select * from renamed
