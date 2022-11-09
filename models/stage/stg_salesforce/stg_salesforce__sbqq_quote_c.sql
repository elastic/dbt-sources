
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_quote_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        addendums_linked_c,
        approval_chatter_feed_id_c,
        approval_status_c,
        auto_renewal_c,
        bill_to_account_c,
        bill_to_matched_c,
        certificate_of_insurance_c,
        choice_of_law_c,
        choice_of_law_terms_c,
        cloud_products_c,
        consulting_c,
        created_by_id,
        created_date,
        currency_iso_code,
        currency_multiplier_c,
        delete_interest_payment_for_late_payment_c,
        description_c,
        dnt_c,
        eliminate_attorneys_fees_provision_c,
        end_user_ns_customer_c,
        es_cat_cloud_above_32_gb_c,
        es_cat_cloud_c,
        es_cat_cloud_prem_under_64_gb_c,
        es_cat_cloud_std_under_8_gb_c,
        es_cat_cloud_under_32_gb_c,
        es_cat_oem_c,
        es_cat_onprem_c,
        es_cat_prod_c,
        es_cloud_negative_c,
        es_family_other_c,
        es_family_subs_c,
        es_family_svcs_c,
        es_mgr_approval_c,
        es_onprem_positive_c,
        es_partner_category_c,
        es_pt_mgr_limit_c,
        es_pt_rep_limit_c,
        es_spl_bundled_c,
        es_spl_custom_c,
        es_spl_ece_contact_c,
        es_spl_elasticon_c,
        es_spl_nodecap_c,
        es_spl_reseller_c,
        es_swiftype_bundle_type_c,
        es_swiftype_type_c,
        es_type_appsearch_c,
        es_type_cloud_aws_c,
        es_type_cloud_gcp_c,
        es_type_cloud_gold_c,
        es_type_cloud_plat_c,
        es_type_cloud_prem_c,
        es_type_cloud_std_c,
        es_type_cust_gold_c,
        es_type_cust_plat_c,
        es_type_devto_c,
        es_type_dr_gold_c,
        es_type_dr_plat_c,
        es_type_ece_c,
        es_type_fed_dev_c,
        es_type_fed_gold_c,
        es_type_fed_plat_c,
        es_type_oem_dev_c,
        es_type_oem_gold_c,
        es_type_oem_plat_c,
        es_type_private_cloud_c,
        es_type_prod_dev_c,
        es_type_prod_gold_c,
        es_type_prod_plat_c,
        es_type_sitesearch_c,
        es_type_stforum_c,
        es_type_stsilver_c,
        es_type_svcs_con_c,
        es_type_svcs_online_c,
        es_type_svcs_pt_c,
        es_type_swift_prem_c,
        es_type_swiftype_c,
        es_vp_approval_c,
        hide_additional_discount_c,
        hide_discounts_c,
        hide_total_discount_c,
        hide_volume_discount_c,
        is_bundle_kit_c,
        is_deleted,
        justification_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        max_reseller_discount_limit_c,
        msa_c,
        msa_linked_c,
        msa_order_c,
        msa_version_c,
        msaversion_latest_c,
        multi_project_details_c,
        multi_project_text_c,
        multi_year_billed_on_contract_anniversary_c,
        name,
        node_type_c,
        non_consulting_c,
        non_online_training_c,
        non_private_training_c,
        number_of_nodes_c,
        number_of_projects_c,
        online_training_c,
        order_ops_c,
        override_agreements_c,
        owner_id,
        partner_agreement_c,
        pilot_c,
        private_training_c,
        quote_approval_comments_c,
        quote_form_comments_c,
        recalculate_c,
        record_type_id,
        removing_audit_rights_c,
        removing_audit_rights_reason_other_c,
        removing_customer_identification_c,
        removing_non_solicitation_c,
        removing_rescheduling_fee_services_c,
        reseller_account_c,
        reseller_quote_c,
        sbqq_account_c,
        sbqq_billing_city_c,
        sbqq_billing_country_c,
        sbqq_billing_frequency_c,
        sbqq_billing_name_c,
        sbqq_billing_postal_code_c,
        sbqq_billing_state_c,
        sbqq_billing_street_c,
        sbqq_contracting_method_c,
        sbqq_customer_discount_c,
        sbqq_default_template_c,
        sbqq_delivery_method_c,
        sbqq_distributor_c,
        sbqq_distributor_discount_c,
        sbqq_document_status_c,
        sbqq_email_template_id_c,
        sbqq_end_date_c,
        sbqq_expiration_date_c,
        sbqq_first_segment_term_end_date_c,
        sbqq_generate_contracted_price_c,
        sbqq_introduction_c,
        sbqq_key_c,
        sbqq_line_items_grouped_c,
        sbqq_line_items_printed_c,
        sbqq_markup_rate_c,
        sbqq_master_contract_c,
        sbqq_notes_c,
        sbqq_opportunity_2_c,
        sbqq_order_by_c,
        sbqq_order_by_quote_line_group_c,
        sbqq_order_group_id_c,
        sbqq_ordered_c,
        sbqq_original_quote_c,
        sbqq_paper_size_c,
        sbqq_partner_c,
        sbqq_partner_discount_c,
        sbqq_payment_terms_c,
        sbqq_price_book_c,
        sbqq_pricebook_id_c,
        sbqq_primary_c,
        sbqq_primary_contact_c,
        sbqq_quote_language_c,
        sbqq_quote_name_c,
        sbqq_quote_process_id_c,
        sbqq_quote_template_id_c,
        sbqq_renewal_term_c,
        sbqq_renewal_uplift_rate_c,
        sbqq_sales_rep_c,
        sbqq_shipping_city_c,
        sbqq_shipping_country_c,
        sbqq_shipping_name_c,
        sbqq_shipping_postal_code_c,
        sbqq_shipping_state_c,
        sbqq_shipping_street_c,
        sbqq_source_c,
        sbqq_start_date_c,
        sbqq_status_c,
        sbqq_subscription_term_c,
        sbqq_target_customer_amount_c,
        sbqq_type_c,
        sbqq_unopened_c,
        sbqq_watermark_shown_c,
        sbqqsc_master_service_contract_c,
        services_discounted_c,
        ship_to_contact_c,
        ship_to_matched_c,
        show_end_date_c,
        show_mpn_c,
        show_start_date_c,
        signatory_contact_2_c,
        signatory_contact_c,
        signature_2_c,
        skip_renewal_controls_c,
        skip_validation_c,
        special_terms_c,
        start_date_c,
        submitted_date_c,
        subscriptions_discounted_c,
        subsidiary_c,
        sum_of_consulting_products_1_c,
        sum_of_elastic_on_products_c,
        sum_of_training_products_1_c,
        system_modstamp,
        training_discount_limit_c,
        v_3_c,
        version_c,
        account_type_c,
        bill_to_city_c,
        bill_to_country_c,
        bill_to_name_c,
        bill_to_postal_code_c,
        bill_to_state_c,
        bill_to_street_2_c,
        bill_to_street_c,
        billing_email_c,
        bundled_cloud_and_consulting_c,
        bundled_cloud_and_training_c,
        bundled_consulting_and_training_c,
        bundled_subscription_and_consulting_c,
        bundled_subscription_and_training_c,
        change_bill_to_account_address_email_c,
        cloud_product_included_c,
        cloud_standard_premium_url_c,
        cloud_url_term_c,
        consulting_bundled_c,
        contract_date_offset_days_c,
        contract_start_date_c,
        deal_tenure_c,
        discount_present_on_quote_c,
        draft_mode_c,
        es_bundle_type_c,
        es_quote_type_c,
        es_reseller_stra_c,
        es_type_cloud_c,
        eula_url_c,
        helpdesk_url_c,
        invoicing_terms_c,
        is_add_on_quote_c,
        is_addon_c,
        is_latam_c,
        is_new_business_c,
        is_oem_c,
        is_russia_c,
        manager_approval_c,
        manager_c,
        master_quote_c,
        max_discount_allocated_to_partner_c,
        modify_quote_terms_c,
        msa_auto_renewal_c,
        msa_choice_of_law_match_c,
        msa_delete_interest_for_late_payment_c,
        msa_removing_audit_rights_c,
        msa_removing_customer_identification_c,
        msa_removing_non_solicitation_c,
        msa_removing_rescheduling_fee_match_c,
        msa_terms_match_c,
        node_count_rollup_c,
        ns_customer_c,
        online_training_bundled_c,
        online_url_term_c,
        opp_close_date_c,
        opp_owner_role_c,
        opportunity_amount_synced_c,
        opportunity_id_c,
        opportunity_owner_c,
        opportunity_owner_email_c,
        opportunity_owner_phone_c,
        opportunity_stage_c,
        override_approval_c,
        partner_value_add_c,
        pricebook_name_c,
        private_training_bundled_c,
        profile_id_c,
        project_c,
        quote_is_bundled_c,
        quote_status_c,
        quote_super_geo_c,
        reseller_quoted_formula_c,
        revenue_review_500_k_c,
        rollup_credit_items_c,
        rollup_end_date_c,
        rollup_start_date_c,
        rvp_c,
        sbqq_additional_discount_amount_c,
        sbqq_average_customer_discount_c,
        sbqq_average_partner_discount_c,
        sbqq_customer_amount_c,
        sbqq_days_quote_open_c,
        sbqq_line_item_count_c,
        sbqq_list_amount_c,
        sbqq_net_amount_c,
        sbqq_regular_amount_c,
        sbqq_total_customer_discount_amount_c,
        ship_to_city_c,
        ship_to_country_c,
        ship_to_email_c,
        ship_to_name_c,
        ship_to_postal_code_c,
        ship_to_state_c,
        ship_to_street_c,
        skip_approval_c,
        sub_term_months_c,
        sub_url_c,
        subscription_product_included_c,
        subsidiary_address_1_c,
        subsidiary_address_2_c,
        subsidiary_address_3_c,
        subsidiary_address_4_c,
        subsidiary_address_5_c,
        subsidiary_address_6_c,
        sum_of_cloud_gold_products_c,
        sum_of_cloud_platinum_products_c,
        sum_of_cloud_standard_products_c,
        sum_of_consulting_products_c,
        sum_of_dev_products_c,
        sum_of_dev_to_prod_gold_products_c,
        sum_of_dev_to_prod_platinum_products_c,
        sum_of_ece_products_c,
        sum_of_gold_products_c,
        sum_of_line_items_c,
        sum_of_new_products_c,
        sum_of_node_quanity_c,
        sum_of_oem_products_c,
        sum_of_platinum_products_c,
        sum_of_startup_products_c,
        sum_of_training_products_c,
        sum_of_u_s_fed_platinum_products_c,
        sw_url_term_c,
        todays_date_c,
        total_volume_discount_c,
        training_product_included_c,
        url_term_c,
        v_2_approval_c,
        user_profile_name_c,
        n_1_cs_c,
        special_terms_populated_c,
        y_1_cs_c,
        y_1_cs_override_c,
        n_1_cs_y_2_cs_c,
        y_1_cs_n_2_cs_c,
        y_1_cs_y_2_cs_c,
        converted_net_amount_c,
        invoicing_terms_prod_c,
        of_bucket_c,
        vp_id_c,
        addon_direct_c,
        addon_reseller_c,
        agreement_addendum_text_c,
        app_search_addendum_linked_c,
        bill_to_type_c,
        consulting_addendum_linked_c,
        csp_addendum_linked_c,
        direct_federal_c,
        direct_non_federal_c,
        direct_quote_c,
        es_cat_type_c,
        es_prod_category_c,
        es_type_premium_2_zone_c,
        mca_override_c,
        msp_addendum_linked_c,
        non_reseller_c,
        oem_addendum_linked_c,
        online_training_addendum_linked_c,
        private_saa_s_addendum_linked_c,
        private_training_addendum_linked_c,
        reseller_federal_c,
        reseller_non_federal_c,
        saa_s_addendum_linked_c,
        self_managed_addendum_linked_c,
        services_addendum_linked_c,
        signature_type_c,
        site_search_addendum_linked_c,
        sm_url_term_c,
        start_term_type_c,
        tc_version_c,
        discount_true_c,
        agreements_linked_c,
        product_true_c,
        neg_lines_end_date_c,
        is_early_renewal_c,
        is_net_new_business_quote_c,
        is_parent_legacy_ece_c,
        is_parent_legacy_self_managed_c,
        is_renewal_quote_c,
        es_type_ece_128_gb_c,
        es_type_ece_64_gb_c,
        es_type_self_managed_128_gb_c,
        es_type_self_managed_64_gb_c,
        url_term_inc_fed_global_c,
        count_c,
        most_recent_quote_document_created_date_c,
        y_1_cs_eligible_c,
        sum_of_cloud_enterprise_products_c,
        is_opportunity_closed_c,
        es_type_fed_enterp_c,
        missing_rvp_c,
        rvp_not_missing_c,
        avp_c,
        enter_res_sku_c,
        es_pre_paid_c,
        ess_agreement_c_c,
        ess_agreement_c,
        ess_azure_reseller_c,
        not_my_payment_term_c,
        es_type_services_unit_c,
        bill_to_subsidiary_c,
        online_seats_c,
        total_partner_uplift_amount_c,
        is_price_refreshed_c,
        es_type_gcp_mp_c,
        second_tier_quote_term_c,
        second_tier_reseller_account_c,
        agreement_check_for_reseller_c,
        reseller_distributor_language_c,
        second_reseller_account_name_c,
        secondary_reseller_partner_type_c,
        es_type_annual_prepaid_c,
        services_url_term_c,
        billing_arrangement_c,
        gcp_quote_id_c,
        non_standard_payment_terms_c,
        terms_c,
        acv_c,
        acv_usd_c,
        avp_rvp_c,
        po_multiple_c,
        po_single_c,
        second_tier_quote_term_caps_c,
        allow_dnt_edits_c,
        edit_lines_field_set_name_c,
        is_legacy_dnt_c,
        currency_rate_c,
        oppty_bd_type_c,
        simplified_discounts_c,
        subscription_extension_request_approved_c,
        es_eru_testdevsb_64_gb_c,
        tcv_subs_c,
        combined_services_addendum_linked_c,
        es_type_svsc_all_c,
        is_bundled_c,
        opportunity_record_type_c,
        opportunity_is_add_on_c,
        quote_duration_c,
        is_pwccompany_related_quote_c,
        agreement_type_c,
        agreement_version_c,
        account_ship_to_state_c,
        area_c,
        credit_hold_applied_c,
        second_level_approver_id_c,
        line_item_fully_discounted_c,
        approved_needed_c,
        not_fully_discounted_c,
        approval_flag_c,
        sanctioned_entity_c,
        list_amount_ess_c,
        ess_max_discount_c,
        acv_usd_ess_c,
        acv_ess_c,
        approval_date_c,
        services_line_item_fully_discounted_c,
        non_services_line_item_fully_discounted_c,
        auto_renewable_c,
        acv_subs_c,
        deal_length_c,
        subscription_end_date_c,
        balance_remaining_c,
        approvedby_id_c,
        extension_term_c,
        sbqq_uncalculated_c,
        current_contract_end_date_qcp_c,
        sum_of_public_trainings_c,
        online_addendum_linked_c,
        exit_ren_c,
        prior_net_price_unprorated_c,
        sbqq_last_saved_on_c,
        overlap_prorate_multiplier_c,
        my_subs_c,
        tcv_c,
        show_year_1_c,
        show_year_3_c,
        my_c,
        tcv_spn_c,
        invoice_year_5_c,
        invoice_year_3_c,
        header_field_set_name_c,
        sbqqsc_master_evergreen_service_contract_c,
        invoice_year_1_c,
        show_year_5_c,
        deal_type_c,
        sum_of_private_trainings_c,
        prior_approvals_eligible_for_re_approval_c,
        sub_term_c,
        quote_months_c,
        acvold_c,
        pr_recalc_c,
        show_discounts_os_c,
        multiple_projects_c,
        contract_start_to_quote_start_months_c,
        current_contract_end_date_c,
        qlg_count_c,
        show_list_unit_price_only_c,
        contract_end_to_quote_start_months_c,
        auto_renewable_2_c,
        ren_c,
        early_renewal_process_c,
        base_ren_c,
        renewal_override_c,
        current_contract_end_date_only_date_c,
        renewed_contract_c,
        expansion_products_c,
        subscription_start_date_c,
        rejected_by_ar_c,
        debook_check_c,
        show_total_discounts_c,
        show_start_date_end_date_c,
        is_mdq_c,
        show_year_2_c,
        subscription_training_included_c,
        invoice_year_4_c,
        ne_c,
        total_amount_c,
        invoice_year_2_c,
        show_year_4_c,
        sbqq_master_evergreen_contract_c,
        non_mdq_c,
        renewal_rate_c,
        acv_sub_c,
        product_replacement_os_c,
        sbqq_consumption_rate_override_c,
        sbqq_proration_day_of_month_c,
        sbqq_last_calculated_on_c,
        force_quote_recalc_c,
        show_net_unit_price_c,
        of_lines_c,
        es_type_aws_or_azure_mp_c,
        quote_18_digit_id_c,
        ren_prorate_multiplier_c,
        renewed_contract_renewal_value_c,
        qualified_for_renewal_c,
        consumption_end_date_c,
        es_type_consumption_c,
        consumption_start_date_c,
        is_risk_country_c,
        lock_document_c,
        es_type_gcp_mp_annual_c,
        online_training_group_count_c,
        group_count_to_online_training_product_c,
        sum_of_service_advisory_products_c,
        es_cat_cloud_non_consumption_c,
        consulting_discounted_c,
        training_discounted_c,
        opp_discretionary_extension_days_c,
        aws_qty_aggregated_c,
        gcp_qty_aggregated_c,
        run_cloud_apis_c,
        azure_qty_aggregated_c,
        is_enhanced_provisioning_c,
        ra_created_from_opportunity_c,
        eru_64_gb_qty_aggregated_c,
        renewal_contract_currency_multiplier_c,
        quote_total_acv_amount_usd_c

    from source

)

select * from renamed
