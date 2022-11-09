
with source as (

    select * from {{ source('raw_netsuite', 'transaction_inventory_numbers') }}

),

renamed as (

    select
        account_name_hidden,
        additional_discount,
        adjustment_field,
        adjustment_tax_code_id,
        annual_prorate,
        avatax_taxcode,
        base_rate,
        billings_account_id,
        billings_discount_account_id,
        billings_discount_account_id_0,
        billing_email,
        billing_end_date,
        billing_start_date,
        capacity_id,
        capacity_id_0,
        cloud_item_type_id,
        code_of_supply_id,
        code_of_supply_id_0,
        commodity_code,
        contract_item_end_date,
        contract_item_price_level,
        contract_item_start_date,
        contract_item_term,
        contract_item_uplift,
        cost_project_id,
        counterparty_vat_number,
        country_of_origin,
        country_of_origin_code,
        custom_sku,
        details_of_subject_and_exem_id,
        discount_amount,
        do_not_sync_to_salesforce,
        elastic_cloud_item_id,
        elastic_cloud_item_type_id,
        embedded_quantity,
        emirate_id,
        employee_name_column_id,
        end_date,
        end_of_life_date,
        end_of_ms_date,
        eu_triangulation,
        eventdetails,
        exempt_from_billing,
        exempt_from_billing_script,
        expense_account_id,
        from_contract_item,
        gross_amount,
        gross_amount1,
        gross_billings_account_id,
        handling_amount,
        handling_amount1,
        ha_id,
        ha_id_0,
        inline_discount,
        inventory_number,
        item_category_id,
        item_rev_rec_end_date,
        item_rev_rec_start_date,
        list_rate,
        maintenancesupport_type_hid_id,
        maintenancesupport_type_id,
        maintenancesupport__hidden,
        maximum_quantity_hidden,
        mpn,
        ms_basis_amount,
        ms_pricing_option_id,
        ms_pricing_option_id_0,
        nature_of_transaction_codes_id,
        node_count,
        notc_id,
        n_606lt_dr_account_id,
        n_606_revenue_account_id,
        n_606_st_dr_account_id,
        optout_ms,
        optout_ms_0,
        original_list_rate,
        original_price_level,
        original_quantity,
        participants_list,
        pick_up,
        planned_hours,
        platform_id,
        product_category_id,
        product_family_id,
        product_family_v2_id,
        product_line_id,
        product_type_id,
        quantity,
        quantity_cap_hidden_id,
        quantity_type_id,
        region_id,
        region_id_0,
        related_asset_id,
        related_found_standard_item_id,
        renewals_exclusion,
        renewals_exclusion_0,
        renewal_reset_data_hidden,
        renew_with_id,
        replaced_with_id,
        rev_rec_end_date,
        rev_rec_start_date,
        service_date,
        shipping_amount,
        shipping_amount1,
        shipto_entityuse_code_id,
        shipto_latitude,
        shipto_longitude,
        ssd_id,
        ssd_id_0,
        ssp_category_id,
        ssp_family_id,
        start_date,
        statistical_procedure_for_p_id,
        statistical_procedure_for_s_id,
        statistical_value,
        statistical_value__base_curre,
        subject_to_allocation,
        subscription_type_id,
        supplementary_unit_id,
        supplementary_unit__abberviat,
        term__contract_pricing_type_id,
        training_event_id,
        transaction_id,
        transaction_line,
        type_of_goods_id,
        udf1,
        udf2,
        un_number,
        use_case_id,
        vendor_hidden_id,
        vendor_name_id,
        volume_discount,
        volume_discounted_in_quoting,
        volume_id

    from source

)

select * from renamed
