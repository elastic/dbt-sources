
with source as (

    select * from {{ source('raw_netsuite', 'revenue_elements_history') }}

),

renamed as (

    select
        accounting_book_id,
        accounting_period_id,
        allocated_contract_cost_amount,
        allocation_amount,
        allocation_amount_foreign,
        allocation_type,
        alternate_quantity,
        alternate_unit_id,
        amortization_end_date,
        amortization_schedule_id,
        amortization_start_date,
        amortization_template_id,
        calculated_amount,
        calculated_amount_foreign,
        class_id,
        contract_cost_allocation_pct,
        contract_expense_account_id,
        contract_exp_offset_acct_id,
        cost_amortization_amount,
        create_plan_on_event_type,
        currency_id,
        date_created,
        date_last_modified,
        deferral_account_id,
        department_id,
        discounted_sales_amount,
        disc_sales_amount_foreign,
        end_date,
        entity_id,
        exchange_rate,
        expense_migrate_adjust_acct_id,
        fair_value,
        fair_value_foreign,
        forecast_end_date,
        forecast_start_date,
        fx_adjustment_account_id,
        is_bom_item_type,
        is_fair_value_override,
        is_fair_value_vsoe,
        is_hold_rev_rec,
        is_permit_discount,
        is_posting_discount_applied,
        item_id,
        item_labor_cost_amount,
        item_resale_cost_amount,
        labor_deferred_expense_acct_id,
        labor_expense_acct_id,
        last_merge_from_arrangement_id,
        location_id,
        new_standard_migrate_date,
        parent_bom_element_id,
        pending_action,
        quantity,
        recognition_account_id,
        reference_id,
        return_revenue_element_id,
        revenue_allocation_group,
        revenue_allocation_ratio,
        revenue_element_id,
        revenue_element_number,
        revenue_migrate_adjust_acct_id,
        rev_rec_forecast_rule_id,
        rev_rec_rule_id,
        sales_amount,
        sales_amount_foreign,
        source_date,
        source_id,
        source_transaction_id,
        source_type,
        start_date,
        subsidiary_id,
        term_in_days,
        term_in_months,
        unbilled_receivable_group

    from source

)

select * from renamed
