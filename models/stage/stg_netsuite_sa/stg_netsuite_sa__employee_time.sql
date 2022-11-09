
with source as (

    select * from {{ source('raw_netsuite_sa', 'employee_time') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_synced,
        account_name_hidden,
        additional_discount,
        adjustment_field,
        adjustment_tax_code_id,
        annual_prorate,
        approved,
        base_rate,
        billable,
        billed,
        billing_class_id,
        billing_email,
        billing_end_date,
        billing_start_date,
        billing_subsidiary_id,
        billings_discount_account_id,
        break_duration,
        capacity_id,
        charge_billing_run_id,
        class_id,
        closed,
        cloud_item_type_id,
        code_of_supply_id,
        comments,
        contract_item_end_date,
        contract_item_price_level,
        contract_item_start_date,
        contract_item_term,
        contract_item_uplift,
        cost_project_id,
        counterparty_vat_number,
        country_of_origin,
        country_of_origin_code,
        customer_id,
        date_last_modified,
        day_0,
        department_id,
        details_of_subject_and_exem_id,
        discount_amount,
        duration,
        emirate_id,
        employee_id,
        employee_name_column_id,
        employee_time_id,
        end_date,
        ending,
        eu_triangulation,
        event_id,
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
        is_outside_project_plan,
        is_posted,
        is_productive,
        is_utilized,
        item_id,
        item_rev_rec_end_date,
        item_rev_rec_start_date,
        list_rate,
        location_id,
        maintenancesupport__hidden,
        maintenancesupport_type_hid_id,
        ms_basis_amount,
        ms_pricing_option_id,
        next_approver_id,
        notc_id,
        optout_ms,
        original_list_rate,
        original_price_level,
        original_quantity,
        participants_list,
        payroll_item_id,
        payroll_workplace_id,
        pick_up,
        platform_id,
        price_type_id,
        region_id,
        rejection_note,
        related_asset_id,
        remaining_time_to_charge,
        renewal_reset_data_hidden,
        renewals_exclusion,
        resource_allocation_id,
        service_date,
        shipping_amount,
        shipping_amount1,
        shipto_entityuse_code_id,
        shipto_latitude,
        shipto_longitude,
        ssd_id,
        start_date,
        starting,
        statistical_procedure_for_p_id,
        statistical_procedure_for_s_id,
        statistical_value,
        statistical_value__base_curre,
        status_code,
        subscription_type_id,
        subsidiary_id,
        time_type,
        timesheet_id,
        transaction_id,
        transaction_line_id,
        unit_cost,
        unit_price,
        use_case_id,
        vendor_hidden_id,
        vendor_name_id,
        volume_discount,
        volume_id,
        establishment_code,
        _fivetran_deleted,
        date_deleted,
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
        allocadia_id,
        negative_line_id,
        partner_id,
        sfdc_check_flag,
        sfdc_update_memo

    from source

)

select * from renamed