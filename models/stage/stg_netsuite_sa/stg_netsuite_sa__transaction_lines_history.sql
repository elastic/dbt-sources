
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_lines_history') }}

),

renamed as (

    select
        transaction_id,
        transaction_line_id,
        _fivetran_synced,
        account_id,
        account_name_hidden,
        additional_discount,
        adjustment_field,
        adjustment_tax_code_id,
        alt_sales_amount,
        amortization_residual,
        amount,
        amount_foreign,
        amount_foreign_linked,
        amount_linked,
        amount_pending,
        amount_settlement,
        amount_taxable,
        amount_taxed,
        annual_prorate,
        base_rate,
        bill_variance_status,
        billing_email,
        billing_end_date,
        billing_schedule_id,
        billing_start_date,
        billing_subsidiary_id,
        billings_discount_account_id,
        bom_quantity,
        capacity_id,
        catch_up_period_id,
        charge_rule_id,
        charge_type,
        class_id,
        cloud_item_type_id,
        code_of_supply_id,
        company_id,
        component_id,
        component_yield,
        contract_item_end_date,
        contract_item_price_level,
        contract_item_start_date,
        contract_item_term,
        contract_item_uplift,
        cost_estimate_type,
        cost_project_id,
        counterparty_vat_number,
        country_of_origin,
        country_of_origin_code,
        date_cleared,
        date_closed,
        date_created,
        date_last_modified,
        date_last_modified_gmt,
        date_revenue_committed,
        delay_rev_rec,
        department_id,
        details_of_subject_and_exem_id,
        discount_amount,
        do_not_display_line,
        do_not_print_line,
        do_restock,
        emirate_id,
        employee_name_column_id,
        end_date,
        estimated_cost,
        estimated_cost_foreign,
        eu_triangulation,
        eventdetails,
        exempt_from_billing,
        expected_receipt_date,
        expense_account_id,
        expense_category_id,
        from_contract_item,
        gl_number,
        gl_sequence,
        gl_sequence_id,
        gross_amount,
        gross_amount1,
        gross_amount_0,
        gross_billings_account_id,
        ha_id,
        handling_amount,
        handling_amount1,
        has_cost_line,
        inline_discount,
        is_allocation,
        is_amortization_rev_rec,
        is_commitment_confirmed,
        is_cost_line,
        is_custom_line,
        is_exclude_from_rate_request,
        is_fx_variance,
        is_item_value_adjustment,
        is_landed_cost,
        is_scrap,
        is_vsoe_allocation_line,
        isbillable,
        iscleared,
        isnonreimbursable,
        istaxable,
        item_count,
        item_id,
        item_received,
        item_rev_rec_end_date,
        item_rev_rec_start_date,
        item_source,
        item_unit_price,
        kit_part_number,
        landed_cost_source_line_id,
        list_rate,
        location_id,
        maintenancesupport__hidden,
        maintenancesupport_type_hid_id,
        match_bill_to_receipt,
        memo,
        ms_basis_amount,
        ms_pricing_option_id,
        needs_revenue_element,
        net_amount,
        net_amount_foreign,
        non_posting_line,
        notc_id,
        number_billed,
        operation_sequence_number,
        optout_ms,
        order_priority,
        original_list_rate,
        original_price_level,
        original_quantity,
        participants_list,
        payment_method_id,
        payroll_item_id,
        payroll_wage_base_amount,
        payroll_year_to_date_amount,
        period_closed,
        pick_up,
        platform_id,
        price_type_id,
        project_task_id,
        purchase_contract_id,
        quantity_committed,
        quantity_packed,
        quantity_picked,
        quantity_received_in_shipment,
        receivebydate,
        region_id,
        reimbursement_type,
        related_asset_id,
        related_company_id,
        renewal_reset_data_hidden,
        renewals_exclusion,
        rev_rec_end_date,
        rev_rec_rule_id,
        rev_rec_start_date,
        revenue_element_id,
        schedule_id,
        service_date,
        shipdate,
        shipment_received,
        shipping_amount,
        shipping_amount1,
        shipping_group_id,
        shipto_entityuse_code_id,
        shipto_latitude,
        shipto_longitude,
        source_subsidiary_id,
        ssd_id,
        start_date,
        statistical_procedure_for_p_id,
        statistical_procedure_for_s_id,
        statistical_value,
        statistical_value__base_curre,
        subscription_line_id,
        subscription_type_id,
        subsidiary_id,
        tax_item_id,
        tax_type,
        term_in_months,
        tobeemailed,
        tobefaxed,
        tobeprinted,
        transaction_discount_line,
        transaction_order,
        transfer_order_item_line,
        transfer_order_line_type,
        unique_key,
        unit_cost_override,
        unit_of_measure_id,
        use_case_id,
        vendor_hidden_id,
        vendor_name_id,
        volume_discount,
        volume_id,
        vsoe_allocation,
        vsoe_amt,
        vsoe_deferral,
        vsoe_delivered,
        vsoe_discount,
        vsoe_price,
        establishment_code,
        quantity_allocated,
        date_requested,
        date_deleted,
        _fivetran_deleted,
        udf1,
        udf2,
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
        order_allocation_strategy_id,
        allocadia_id,
        negative_line_id,
        partner_id,
        partition_date

    from source

)

select * from renamed
