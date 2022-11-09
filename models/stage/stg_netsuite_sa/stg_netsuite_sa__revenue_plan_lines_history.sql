
with source as (

    select * from {{ source('raw_netsuite_sa', 'revenue_plan_lines_history') }}

),

renamed as (

    select
        fivetran_index,
        plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_name_hidden,
        accounting_period_id,
        additional_discount,
        adjustment_field,
        adjustment_tax_code_id,
        amount,
        annual_prorate,
        base_rate,
        billing_email,
        billing_end_date,
        billing_start_date,
        billings_discount_account_id,
        capacity_id,
        cloud_item_type_id,
        code_of_supply_id,
        contract_item_end_date,
        contract_item_price_level,
        contract_item_start_date,
        contract_item_term,
        contract_item_uplift,
        cost_project_id,
        counterparty_vat_number,
        country_of_origin,
        country_of_origin_code,
        date_created,
        date_deleted,
        date_last_modified,
        deferral_account_id,
        details_of_subject_and_exem_id,
        discount_amount,
        emirate_id,
        employee_name_column_id,
        end_date,
        establishment_code,
        eu_triangulation,
        eventdetails,
        exempt_from_billing,
        expense_account_id,
        from_contract_item,
        gross_amount,
        gross_amount1,
        gross_billings_account_id,
        ha_id,
        handling_amount,
        handling_amount1,
        inline_discount,
        is_recognized,
        item_rev_rec_end_date,
        item_rev_rec_start_date,
        journal_id,
        list_rate,
        maintenancesupport__hidden,
        maintenancesupport_type_hid_id,
        ms_basis_amount,
        ms_pricing_option_id,
        notc_id,
        optout_ms,
        original_list_rate,
        original_price_level,
        original_quantity,
        participants_list,
        pick_up,
        planned_revenue_type,
        platform_id,
        recognition_account_id,
        region_id,
        related_asset_id,
        renewal_reset_data_hidden,
        renewals_exclusion,
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
        udf1,
        udf2,
        use_case_id,
        vendor_hidden_id,
        vendor_name_id,
        volume_discount,
        volume_id,
        original_order_product,
        negative_line_type_id,
        sales_order_line_id,
        sales_order_line_unique_key,
        prior_order_product,
        line_bill_date,
        compound_negative,
        billing_memo,
        cloud_account_id,
        discount_percentage,
        on_demand_type_id,
        allocadia_id,
        negative_line_id,
        partner_id,
        partition_date

    from source

)

select * from renamed
