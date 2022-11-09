
with source as (

    select * from {{ source('raw_salesforce', 'msa_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        account_c,
        agreement_expiration_date_c,
        agreement_tier_c,
        agreement_type_c,
        auto_renewal_c,
        certificate_of_insurance_c,
        choice_of_law_c,
        covers_global_affiliates_c,
        covers_oem_msp_reseller_c,
        covers_services_reseller_c,
        created_by_id,
        created_date,
        currency_iso_code,
        delete_interest_payment_for_late_payment_c,
        eliminate_attorneys_fees_provision_c,
        end_date_c,
        es_entity_c,
        flows_down_t_c_s_to_end_user_c,
        global_affiliates_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        msa_download_link_c,
        msa_order_c,
        msa_signed_date_c,
        msa_version_c,
        msaversion_latest_c,
        name,
        notes_c,
        owner_id,
        partner_agreement_version_c,
        partner_of_language_c,
        payment_terms_c,
        record_type_id,
        removing_audit_rights_c,
        removing_audit_rights_reason_other_c,
        removing_customer_identification_c,
        removing_non_solicitation_c,
        removing_rescheduling_fee_services_c,
        start_date_c,
        status_c,
        system_modstamp,
        resellers_not_covered_c,
        is_active_c,
        numerical_version_c,
        new_revision_alert_controller_c,
        stage_changed_c,
        area_c,
        days_in_current_stage_c,
        auto_close_c,
        business_account_c,
        client_c,
        completed_by_c,
        completed_date_c,
        due_date_c,
        pce_definition_c,
        primary_document_c,
        primary_document_title_c,
        process_initiated_c,
        recurring_business_process_c,
        skipped_steps_c,
        subject_c,
        account_name_c,
        agreement_url_c,
        assignment_without_consent_c,
        auto_renewal_2_c,
        aws_only_c,
        azure_only_c,
        baa_c,
        billable_enterprise_memory_c,
        billable_gold_plat_memory_c,
        cloud_info_sec_addendum_c,
        cloud_service_addendum_requird_c,
        company_c,
        conga_company_number_c,
        conga_contract_number_c,
        conga_contracts_agreement_type_c,
        conga_contracts_contract_type_c,
        conga_contracts_group_c,
        conga_contracts_legal_action_c,
        conga_contracts_status_c,
        conga_contracts_term_type_c,
        copy_of_internal_entity_c,
        customer_audit_rights_c,
        days_in_negotiation_c,
        docu_sign_status_c,
        entity_address_c,
        ess_sla_c,
        exclude_from_legal_sync_c,
        expected_acv_c,
        expected_close_month_c,
        expected_tcv_c,
        gcp_only_c,
        generate_document_s_c,
        has_cloud_services_addendum_c,
        has_online_training_addendum_c,
        has_self_managed_addendum_c,
        has_services_addendum_c,
        insurance_clause_c,
        interest_for_late_payment_c,
        legal_company_c,
        legal_company_name_c,
        legal_submission_type_c,
        limited_mca_c,
        mca_required_c,
        nda_required_c,
        negotiated_dpa_c,
        negotiation_complete_c,
        no_app_search_c,
        no_attorneys_fees_section_c,
        no_cloud_endpoint_c,
        no_consulting_services_c,
        no_ece_c,
        no_eck_c,
        no_ess_any_c,
        no_ess_pre_paid_c,
        no_ess_private_c,
        no_ess_standard_payment_c,
        no_on_prem_billable_nodes_c,
        no_private_training_c,
        no_self_managed_endpoint_c,
        no_site_search_c,
        non_local_affiliates_c,
        notes_for_legal_c,
        notes_from_legal_c,
        online_training_service_addenda_required_c,
        order_of_precedence_c,
        parent_agreement_c,
        pce_definition_lookup_c,
        qualifying_po_c,
        resellers_c,
        route_to_approval_c,
        salesforce_link_c,
        self_managed_addendum_c,
        self_managed_dpa_c,
        self_managed_info_sec_addendum_c,
        services_addendum_required_c,
        signature_ready_c,
        site_app_search_sla_c,
        subcontracting_permitted_c,
        no_product_usage_data_permitted_c,
        no_threat_data_permitted_c,
        es_signatory_c,
        signatory_contact_c,
        distributor_language_c,
        background_checks_required_c,
        no_billable_nodes_c,
        no_certification_exams_c,
        no_marketplace_billing_c,
        no_on_site_service_c,
        no_online_training_subscriptions_c,
        no_public_in_person_training_c,
        no_public_on_demand_live_online_training_c,
        no_rental_services_c,
        combined_services_addendum_required_c,
        has_combined_services_addendum_c,
        legal_reviewer_email_c,
        share_files_c,
        opportunity_c,
        country_c

    from source

)

select * from renamed
