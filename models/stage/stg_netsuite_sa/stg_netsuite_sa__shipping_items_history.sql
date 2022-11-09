
with source as (

    select * from {{ source('raw_netsuite_sa', 'shipping_items_history') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_synced,
        avatax_taxcode,
        billings_account_id,
        billings_discount_account_id,
        by_per_item,
        by_total_amount,
        by_weight_amount,
        by_weight_unit_index,
        capacity_id,
        code_of_supply_id,
        commodity_code,
        custom_sku,
        date_last_modified,
        default_unit_price,
        description,
        display_name,
        do_not_sync_to_salesforce,
        docebo_course_id,
        elastic_cloud_item_id,
        elastic_cloud_item_type_id,
        embedded_quantity,
        end_of_life_date,
        end_of_ms_date,
        exempt_from_billing_script,
        flat_rate_amount,
        free_if_over_amount,
        free_if_overactive,
        full_name,
        ha_id,
        income_account_id,
        is_fedex_one_rate,
        is_omit_packaging,
        isinactive,
        isonline,
        istaxable,
        item_category_id,
        item_extid,
        item_id,
        maintenancesupport_type_id,
        maximum_quantity_hidden,
        maximum_shipping_amount,
        minimum_shipping_amount,
        mpn,
        ms_pricing_option_id,
        n_606_revenue_account_id,
        n_606_st_dr_account_id,
        n_606lt_dr_account_id,
        name,
        nature_of_transaction_codes_id,
        node_count,
        optout_ms,
        parent_id,
        per_item_default_price,
        planned_hours,
        pref_purchase_tax_id,
        product_category_id,
        product_family_id,
        product_family_v2_id,
        product_line_id,
        product_type_id,
        quantity_cap_hidden_id,
        quantity_type_id,
        region_id,
        related_found_standard_item_id,
        renew_with_id,
        renewals_exclusion,
        replaced_with_id,
        rev_rec_end_date,
        rev_rec_start_date,
        shipping_cost_function,
        shipping_rate,
        ssd_id,
        ssp_category_id,
        ssp_family_id,
        subject_to_allocation,
        supplementary_unit__abberviat,
        supplementary_unit_id,
        tax_item_id,
        term__contract_pricing_type_id,
        training_event_id,
        type_of_goods_id,
        udf1,
        udf2,
        un_number,
        use_maximum_ship_cost,
        use_minimum_ship_cost,
        vendor_id,
        volume_discounted_in_quoting,
        require_po_startend_date,
        fivetran_index,
        _fivetran_deleted,
        date_deleted,
        revenue_product_family_id,
        revpro_deferred_segments_id,
        revpro_revenue_segments_id,
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
        do_not_generate_revenue_event,
        partition_date

    from source

)

select * from renamed
