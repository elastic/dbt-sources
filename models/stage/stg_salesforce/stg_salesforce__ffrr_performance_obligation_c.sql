
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_performance_obligation_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_name_c,
        ffrr_active_c,
        ffrr_allocated_revenue_adjustment_c,
        ffrr_allocated_revenue_c,
        ffrr_allocated_revenue_override_c,
        ffrr_allocation_ratio_c,
        ffrr_allocation_status_c,
        ffrr_amortized_to_date_c,
        ffrr_balance_sheet_account_c,
        ffrr_completed_c,
        ffrr_controlling_cost_poli_c,
        ffrr_controlling_poli_c,
        ffrr_cost_balance_sheet_account_c,
        ffrr_cost_c,
        ffrr_cost_center_c,
        ffrr_cost_cost_center_c,
        ffrr_cost_income_statement_account_c,
        ffrr_description_c,
        ffrr_end_date_c,
        ffrr_ffrr_template_c,
        ffrr_has_revenue_c,
        ffrr_income_statement_account_c,
        ffrr_null_sspcount_c,
        ffrr_percent_complete_c,
        ffrr_ready_for_revenue_recognition_c,
        ffrr_recognized_to_date_c,
        ffrr_revenue_c,
        ffrr_revenue_contract_c,
        ffrr_revenue_count_c,
        ffrr_revenue_recognition_complete_c,
        ffrr_ssp_c,
        ffrr_sspoverride_c,
        ffrr_start_date_c,
        ffrr_total_ssp_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        ffrr_currency_dp_c

    from source

)

select * from renamed
