
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_items_history') }}

),

renamed as (

    select
        item_id,
        _fivetran_deleted,
        _fivetran_synced,
        avatax_taxcode,
        billings_account_id,
        billings_discount_account_id,
        capacity_id,
        capital_goods,
        cash_register,
        category_0,
        code_of_supply_id,
        commodity_code,
        custom_sku,
        date_deleted,
        date_last_modified,
        deemed_supply,
        deferred_id,
        description,
        do_not_sync_to_salesforce,
        docebo_course_id,
        duplicate_invoice,
        einvoice,
        elastic_cloud_item_id,
        elastic_cloud_item_type_id,
        embedded_quantity,
        end_of_life_date,
        end_of_ms_date,
        exempt_from_billing_script,
        full_name,
        gcc_member_state,
        government,
        ha_id,
        import_0,
        import_vat,
        income_account_id,
        isinactive,
        item_category_id,
        item_extid,
        maintenancesupport_type_id,
        maximum_quantity_hidden,
        mpn,
        ms_pricing_option_id,
        n_606_revenue_account_id,
        n_606_st_dr_account_id,
        n_606lt_dr_account_id,
        name,
        nature_of_transaction_codes_id,
        no_tax_credit,
        no_tax_invoice,
        node_count,
        non_recoverable,
        non_resident,
        nondeductible,
        nondeductible_expense_accou_id,
        nondeductible_rate_derived__id,
        nonoperational_transaction,
        nontaxable,
        notional_rate_derived_from_id,
        optout_ms,
        other_tax_evidence,
        outside_customs_territory,
        paid,
        parent_id,
        partial_tax_credit,
        planned_hours,
        product_category_id,
        product_family_id,
        product_family_v2_id,
        product_line_id,
        product_type_id,
        purchaser_issued_invoice,
        quantity_cap_hidden_id,
        quantity_type_id,
        rate,
        reduced_rate,
        region_id,
        related_found_standard_item_id,
        renew_with_id,
        renewals_exclusion,
        replaced_with_id,
        rev_rec_end_date,
        rev_rec_start_date,
        reverse_charge_code,
        special_reduced_rate,
        special_territory,
        ssd_id,
        ssp_category_id,
        ssp_family_id,
        subject_to_allocation,
        supplementary_unit__abberviat,
        supplementary_unit_id,
        surcharge,
        suspended,
        tax_city,
        tax_county,
        tax_exemption_reason_id,
        tax_state,
        tax_type_id,
        tax_zipcode,
        term__contract_pricing_type_id,
        training_event_id,
        triplicate_invoice,
        type_of_goods_id,
        udf1,
        udf2,
        un_number,
        unknown_tax_credit,
        vendor_id,
        vendorname,
        volume_discounted_in_quoting,
        require_po_startend_date,
        applies_to_digital_services,
        revenue_product_family_id,
        applies_to_direct_cost_servic,
        postponed_import_vat,
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
