
with source as (

    select * from {{ source('raw_netsuite', 'expense_plan_lines_history') }}

),

renamed as (

    select
        accounting_period_id,
        account_name_hidden,
        additional_discount,
        adjustment_field,
        adjustment_tax_code_id,
        amount,
        annual_prorate,
        base_rate,
        billings_discount_account_id,
        billing_email,
        billing_end_date,
        billing_start_date,
        capacity_id,
        cloud_item_type_id,
        code_of_supply_id,
        contract_item_end_date,
        contract_item_price_level,
        contract_item_start_date,
        contract_item_term,
        contract_item_uplift,
        cost_project_id,
        date_created,
        date_last_modified,
        deferred_expense_account_id,
        details_of_subject_and_exem_id,
        discount_amount,
        emirate_id,
        end_date,
        eu_triangulation,
        exempt_from_billing,
        expense_account_id,
        expense_account_id_0,
        from_contract_item,
        gross_amount,
        gross_amount1,
        gross_billings_account_id,
        handling_amount,
        handling_amount1,
        ha_id,
        inline_discount,
        is_recognized,
        item_rev_rec_end_date,
        item_rev_rec_start_date,
        journal_id,
        list_rate,
        maintenancesupport_type_hid_id,
        maintenancesupport__hidden,
        ms_basis_amount,
        ms_pricing_option_id,
        notc_id,
        optout_ms,
        original_list_rate,
        original_price_level,
        original_quantity,
        pick_up,
        planned_expense_type,
        plan_id,
        platform_id,
        region_id,
        related_asset_id,
        renewals_exclusion,
        renewal_reset_data_hidden,
        service_date,
        shipping_amount,
        shipping_amount1,
        shipto_entityuse_code_id,
        shipto_latitude,
        shipto_longitude,
        ssd_id,
        start_date,
        statistical_procedure_for_p_id,
        statistical_procedure_for_s_id,
        statistical_value,
        statistical_value__base_curre,
        subscription_type_id,
        use_case_id,
        vendor_hidden_id,
        vendor_name_id,
        volume_discount,
        volume_id,
        eventdetails,
        participants_list,
        employee_name_column_id,
        counterparty_vat_number,
        country_of_origin,
        country_of_origin_code

    from source

)

select * from renamed
