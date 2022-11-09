
with source as (

    select * from {{ source('raw_netsuite_sa', 'inventory_items') }}

),

renamed as (

    select
        fivetran_index,
        item_id,
        _fivetran_deleted,
        _fivetran_synced,
        allow_drop_ship,
        alt_demand_source_item_id,
        asset_account_id,
        atp_lead_time,
        atp_method,
        avatax_taxcode,
        averagecost,
        backward_consumption_days,
        bill_exch_rate_var_account_id,
        bill_price_variance_account_id,
        bill_qty_variance_account_id,
        billings_account_id,
        billings_discount_account_id,
        capacity_id,
        code_of_supply_id,
        commodity_code,
        cost_0,
        cost_accounting_status,
        cost_category,
        costing_method,
        create_plan_on_event_type,
        created,
        current_on_order_count,
        custom_sku,
        custreturn_variance_account_id,
        date_deleted,
        date_last_modified,
        date_of_last_transaction,
        default_return_cost,
        demand_source,
        demand_time_fence,
        deposit,
        displayname,
        distribution_category,
        distribution_network,
        do_not_sync_to_salesforce,
        docebo_course_id,
        dropship_expense_account_id,
        elastic_cloud_item_id,
        elastic_cloud_item_type_id,
        embedded_quantity,
        end_of_life_date,
        end_of_ms_date,
        exempt_from_billing_script,
        expense_account_id,
        featureddescription,
        fixed_lot_size,
        forward_consumption_days,
        fraud_risk,
        full_name,
        fx_adjustment_account_id,
        gain_loss_account_id,
        ha_id,
        handling_cost,
        hazmat,
        hazmat_hazard_class,
        hazmat_id,
        hazmat_item_units,
        hazmat_item_units_qty,
        hazmat_packing_group,
        hazmat_shipping_name,
        include_child_subsidiaries,
        income_account_id,
        interco_expense_account_id,
        interco_income_account_id,
        invt_count_classification,
        invt_count_interval,
        is_cont_rev_handling,
        is_hold_rev_rec,
        is_moss,
        isinactive,
        isonline,
        istaxable,
        item_category_id,
        item_extid,
        item_revenue_category,
        last_cogs_correction,
        last_invt_count_date,
        last_purchase_price,
        lot_numbered_item,
        lot_sizing_method,
        maintenancesupport_type_id,
        match_bill_to_receipt,
        matrix_type,
        maximum_quantity_hidden,
        modified,
        mpn,
        ms_pricing_option_id,
        n_606_revenue_account_id,
        n_606_st_dr_account_id,
        n_606lt_dr_account_id,
        name,
        nature_of_transaction_codes_id,
        next_invt_count_date,
        node_count,
        ns_lead_time,
        offersupport,
        onspecial,
        optout_ms,
        parent_id,
        payment_method_id,
        periodic_lot_size_days,
        periodic_lot_size_type,
        planned_hours,
        pref_purchase_tax_id,
        pref_sale_tax_id,
        pref_stock_level,
        prices_include_tax,
        pricing_group_id,
        print_sub_items,
        prod_price_var_account_id,
        prod_qty_var_account_id,
        product_category_id,
        product_family_id,
        product_family_v2_id,
        product_line_id,
        product_type_id,
        purchase_price_var_account_id,
        purchase_unit_id,
        purchasedescription,
        quantity_cap_hidden_id,
        quantity_type_id,
        quantityavailable,
        quantitybackordered,
        quantityonhnad,
        region_id,
        related_found_standard_item_id,
        renew_with_id,
        renewals_exclusion,
        reorder_multiple,
        reorderpoint,
        replaced_with_id,
        replenishment_method,
        require_po_startend_date,
        reschedule_in_days,
        reschedule_out_days,
        rev_rec_end_date,
        rev_rec_forecast_rule_id,
        rev_rec_rule_id,
        rev_rec_start_date,
        revenue_allocation_group,
        revenue_product_family_id,
        revpro_deferred_segments_id,
        revpro_revenue_segments_id,
        round_up_as_component,
        safety_stock_days,
        safety_stock_level,
        sale_unit_id,
        salesdescription,
        salesprice,
        scrap_account_id,
        serialized_item,
        shipping_cost,
        specialsdescription,
        ssd_id,
        ssp_category_id,
        ssp_family_id,
        stock_unit_id,
        storedescription,
        storedetaileddescription,
        storedisplayname,
        subject_to_allocation,
        subtype,
        supplementary_unit__abberviat,
        supplementary_unit_id,
        supply_time_fence,
        supply_type,
        tax_item_id,
        term__contract_pricing_type_id,
        totalvalue,
        training_event_id,
        transferprice,
        type_of_goods_id,
        udf1,
        udf2,
        un_number,
        units_type_id,
        upc_code,
        use_component_yield,
        vendor_id,
        vendorname,
        vendreturn_variance_account_id,
        volume_discounted_in_quoting,
        vsoe_deferral,
        vsoe_delivered,
        vsoe_discount,
        vsoe_price,
        weight,
        weight_in_user_defined_unit,
        weight_unit_index,
        wip_account_id,
        wip_cost_variance_account_id,
        work_order_lead_time,
        lower_warning_limit,
        secondary_units_type_id,
        is_catch_weight_enabled,
        conversion_rate,
        upper_warning_limit,
        product_class_id,
        intercompany_account_id,
        lt_deferred_adjustment_acco_id,
        contract_liability_id,
        revenue_item,
        adjustment_liability_accoun_id,
        contract_asset_account_id,
        contract_impairment_account_id,
        adjustment_revenue_account_id,
        revenue_account_id,
        contra_ar_account_id,
        lt_deferred_account_id,
        do_not_generate_revenue_event

    from source

)

select * from renamed
