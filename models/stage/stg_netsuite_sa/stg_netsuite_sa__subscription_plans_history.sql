
with source as (

    select * from {{ source('raw_netsuite_sa', 'subscription_plans_history') }}

),

renamed as (

    select
        plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        advance_renewal_period_number,
        advance_renewal_period_unit_id,
        avatax_taxcode,
        billings_account_id,
        billings_discount_account_id,
        capacity_id,
        class_id,
        code_of_supply_id,
        commodity_code,
        custom_sku,
        date_created,
        date_deleted,
        date_last_modified,
        default_renewal_method_id,
        default_renewal_plan_id,
        default_renewal_term_id,
        default_renewal_trantype_id,
        department_id,
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
        ha_id,
        income_account_id,
        initial_term_id,
        is_auto_renewal,
        is_inactive,
        is_include_children,
        item_category_id,
        location_id,
        maintenancesupport_type_id,
        maximum_quantity_hidden,
        mpn,
        ms_pricing_option_id,
        n_606_revenue_account_id,
        n_606_st_dr_account_id,
        n_606lt_dr_account_id,
        name,
        nature_of_transaction_codes_id,
        node_count,
        optout_ms,
        plan_extid,
        planned_hours,
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
        require_po_startend_date,
        rev_rec_end_date,
        rev_rec_start_date,
        revenue_product_family_id,
        revpro_deferred_segments_id,
        revpro_revenue_segments_id,
        ssd_id,
        ssp_category_id,
        ssp_family_id,
        subject_to_allocation,
        subsidiary_id,
        supplementary_unit__abberviat,
        supplementary_unit_id,
        term__contract_pricing_type_id,
        training_event_id,
        type_of_goods_id,
        udf1,
        udf2,
        un_number,
        volume_discounted_in_quoting,
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
