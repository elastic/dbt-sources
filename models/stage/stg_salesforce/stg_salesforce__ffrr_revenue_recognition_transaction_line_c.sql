
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_recognition_transaction_line_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_c,
        ffrr_account_type_c,
        ffrr_actual_vs_forecast_relationship_c,
        ffrr_amount_amortized_c,
        ffrr_amount_recognized_c,
        ffrr_cost_account_c,
        ffrr_cost_amended_c,
        ffrr_cost_center_c,
        ffrr_cost_cost_center_c,
        ffrr_exp_expense_c,
        ffrr_exp_milestone_c,
        ffrr_exp_project_c,
        ffrr_exp_timecard_split_c,
        ffrr_internal_amortized_amount_c,
        ffrr_internal_amount_c,
        ffrr_level_3_object_record_name_c,
        ffrr_level_4_object_record_name_c,
        ffrr_performance_obligation_c,
        ffrr_primary_object_record_name_c,
        ffrr_recognized_record_id_c,
        ffrr_revenue_amended_c,
        ffrr_revenue_contract_c,
        ffrr_revenue_recognition_master_c,
        ffrr_secondary_object_record_name_c,
        ffrr_template_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        department_c,
        ffrr_currency_c,
        ffrr_journal_amortized_amount_c,
        ffrr_journal_amount_c,
        ffrr_period_c,
        ffrr_recognized_date_c,
        item_id_c,
        location_c,
        opportunity_id_c,
        ffrr_amortized_opening_balance_c,
        ffrr_amortized_opening_balance_dual_c,
        ffrr_amortized_opening_balance_home_c,
        ffrr_amount_amortized_dual_c,
        ffrr_amount_amortized_home_c,
        ffrr_amount_recognized_dual_c,
        ffrr_amount_recognized_home_c,
        ffrr_document_currency_rate_c,
        ffrr_dual_currency_c,
        ffrr_dual_currency_rate_c,
        ffrr_home_currency_c,
        ffrr_journal_amortized_dual_amount_c,
        ffrr_journal_amortized_home_amount_c,
        ffrr_journal_amount_dual_c,
        ffrr_journal_amount_home_c,
        ffrr_recognized_opening_balance_c,
        ffrr_recognized_opening_balance_dual_c,
        ffrr_recognized_opening_balance_home_c,
        ffrr_amortized_to_date_c,
        ffrr_analysis_item_1_c,
        ffrr_analysis_item_2_c,
        ffrr_analysis_item_3_c,
        ffrr_analysis_item_4_c,
        ffrr_company_c,
        ffrr_product_c,
        ffrr_recognized_to_date_c,
        ffrr_salesforce_account_c

    from source

)

select * from renamed
