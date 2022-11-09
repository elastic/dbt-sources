
with source as (

    select * from {{ source('raw_salesforce', 'subscription_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_c,
        add_on_project_c,
        additional_comments_c,
        agent_match_attributes_c,
        are_we_achieving_our_strategic_goals_c,
        background_c,
        backup_cloud_engineer_c,
        backup_engineer_1_c,
        backup_engineer_c,
        base_country_c,
        beats_version_c,
        business_hours_c,
        business_reason_for_project_c,
        business_sponser_name_c,
        checklist_last_updated_c,
        cloud_account_email_c,
        cloud_capacity_c,
        cloud_capacity_raw_c,
        cloud_cluster_ids_c,
        company_c,
        contractual_language_c,
        created_by_id,
        created_date,
        csm_c,
        csm_groove_timestamp_c,
        csm_groove_url_c,
        csm_probability_c,
        csm_tiers_c,
        csm_value_c,
        currency_iso_code,
        customer_health_score_c,
        customer_health_score_num_c,
        customer_profile_c,
        customer_project_info_sync_time_c,
        detail_the_environment_c,
        details_c,
        dev_to_prod_date_c,
        development_stage_c,
        do_not_override_support_tier_c,
        do_we_have_legal_concerns_c,
        do_we_know_the_purchasing_process_c,
        domestic_company_c,
        elastic_plugins_in_use_c,
        elastic_search_version_c,
        encrypted_id_c,
        end_date_c,
        engaged_outside_sla_c,
        entitlement_c,
        environment_details_c,
        es_version_c,
        exclude_from_radio_silent_reason_c,
        existing_system_details_c,
        expected_crawl_rate_c,
        expected_return_on_investment_c,
        functionality_c,
        groove_url_c,
        group_id_c,
        handshake_occurred_c,
        has_platinum_feature_license_c,
        high_availability_c,
        infrastructure_specification_c,
        intel_record_created_c,
        intended_plugin_s_c,
        is_deleted,
        is_provisioned_c,
        is_using_graph_c,
        is_using_marvel_c,
        is_using_marvel_cloud_c,
        is_using_ml_c,
        is_using_shield_c,
        is_using_watcher_c,
        kibana_version_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        launched_c,
        lead_cloud_engineer_c,
        lead_engineer_1_c,
        lead_engineer_c,
        lead_out_of_office_c,
        license_c,
        license_node_count_c,
        license_type_c,
        location_c,
        location_of_your_team_c,
        ls_version_c,
        main_use_case_c,
        max_annual_incidents_c,
        max_support_contacts_c,
        multiple_projects_c,
        name,
        named_subscription_exception_expiration_c,
        named_subscription_reason_c,
        nature_of_use_case_c,
        notes_c,
        opportunity_c,
        opportunity_id_c,
        opportunity_name_c,
        os_c,
        other_plugins_c,
        other_questions_comments_notes_c,
        owner_id,
        platform_details_c,
        plugins_info_c,
        preferred_application_platform_s_c,
        product_c,
        project_info_reminder_c,
        project_name_c,
        project_schedule_c,
        record_type_id,
        regenerated_questionnaire_timestamp_c,
        relationship_procurement_c,
        relationship_sponsor_c,
        relationship_technical_team_c,
        renewals_manager_c,
        resync_docebo_c,
        saa_s_csm_c,
        saa_s_csm_override_c,
        saa_s_csm_tier_c,
        sales_order_number_c,
        sales_rep_text_c,
        shared_comments_c,
        shared_tickets_c,
        ship_to_contact_email_c,
        sizing_information_c,
        source_type_c,
        special_handling_c,
        start_date_c,
        status_c,
        subscription_comments_c,
        subscription_type_c,
        support_contacts_list_c,
        support_level_c,
        support_tier_c,
        support_usage_c,
        suppress_license_c,
        suppress_slack_alert_c,
        swiftype_admin_url_c,
        system_modstamp,
        tags_c,
        target_infrastructure_c,
        target_infrastructure_pick_c,
        temp_backup_c,
        temp_lead_1_c,
        temp_lead_c,
        tickets_last_12_months_c,
        tickets_last_12_months_hp_c,
        tickets_last_30_days_c,
        time_zone_c,
        tools_frameworks_c,
        total_node_count_c,
        total_tickets_c,
        total_unanswered_tickets_c,
        transaction_id_c,
        unanswered_cases_last_12_months_c,
        unanswered_cases_last_2_months_c,
        unanswered_cases_last_6_months_c,
        unanswered_cases_last_month_c,
        unprovisioned_reason_c,
        use_case_c,
        version_usage_c,
        what_s_our_plan_c,
        x_pack_first_enabled_on_c,
        x_pack_usage_c,
        x_pack_workshop_first_attended_on_c,
        zd_org_created_c,
        zd_org_id_c,
        create_company_c,
        csm_override_c,
        dr_strange_updated_c,
        elastic_cloud_cluster_id_c,
        groove_url_reset_c,
        no_csm_c,
        no_csmreason_c,
        not_using_shield_reason_c,
        preferred_language_c,
        region_1_c,
        region_c,
        renewal_start_date_c,
        s_3_account_details_c,
        send_first_alert_c,
        send_second_alert_c,
        service_contract_debug_c,
        subscription_id_c,
        support_contacts_list_bkp_c,
        support_country_c,
        sync_entitlement_c,
        temprun_c,
        tickets_last_2_months_c,
        tickets_last_6_months_c,
        total_incidents_current_year_c,
        no_of_provisioned_subscribers_c,
        kickoff_occurred_c,
        questionnaire_incomplete_c,
        csm_top_account_c,
        current_legal_agreement_c,
        escalated_c,
        escalation_comments_c,
        renewal_concerns_c,
        account_geo_c,
        backup_ooo_user_lookup_c,
        cases_last_12_months_excluding_check_ins_c,
        cases_last_2_months_excluding_check_ins_c,
        cases_last_30_days_excluding_check_ins_c,
        cases_last_6_months_excluding_check_ins_c,
        cloud_user_id_c,
        count_c,
        create_license_url_c,
        customer_health_probability_c,
        date_synced_c,
        development_stage_1_c,
        entitlement_status_c,
        es_version_reporting_c,
        esversion_num_c,
        helpdesk_url_c,
        is_federal_c,
        is_oem_msp_csp_c,
        is_self_hosted_c,
        lead_ooo_user_lookup_c,
        monthly_ticket_count_c,
        needs_future_license_c,
        number_of_contacts_on_entitlement_c,
        number_of_contracts_c,
        of_allowed_subscribers_c,
        of_seats_purchased_c,
        opp_greatest_opp_line_c,
        opportunity_close_date_c,
        prod_or_dev_c,
        questionnaire_url_c,
        quote_estype_c,
        record_link_c,
        renewal_opportunity_c,
        renewal_opportunity_id_c,
        renewal_stage_c,
        score_difference_c,
        subscriber_webform_last_response_date_c,
        subscriber_webform_url_c,
        subscription_category_c,
        subscription_id_18_digits_c,
        tier_c,
        total_cases_excluding_check_ins_c,
        training_subscription_c,
        unused_consulting_hours_c,
        which_plugins_c,
        x_pack_enabled_after_workshop_c,
        product_field_c,
        subscription_count_c,
        churn_comments_c,
        customer_sentiment_c,
        renewal_churn_risk_c,
        rep_engaged_c,
        support_contact_provisioning_c,
        renewal_license_end_date_c,
        renewal_license_sent_date_c,
        renewal_license_start_date_c,
        renewal_license_type_c,
        renewal_support_level_c,
        renewal_total_node_count_c,
        endgame_deploy_tools_c,
        endgame_linux_count_c,
        endgame_mac_os_count_c,
        endgame_sensor_deployed_c,
        endgame_sensor_mode_c,
        endgame_win_server_count_c,
        endgame_win_vdi_count_c,
        endgame_win_wstation_count_c,
        es_versions_c,
        snapshot_repo_c,
        other_software_c,
        churn_comment_c,
        churn_reason_c,
        is_account_combo_pubsec_c,
        product_2_c,
        status_by_date_c,
        subscription_created_updated_c,
        special_handling_history_c,
        agg_max_support_contacts_c,
        num_certified_support_contacts_c,
        churn_date_c,
        deactivate_date_c,
        zd_eg_endgame_hosted_c,
        explicit_case_tags_c,
        preferred_tags_c,
        required_tags_c,
        num_hidden_support_contacts_c,
        subscription_product_c,
        training_name_c,
        is_mitigated_entity_c,
        magic_case_count_c,
        opp_id_18_digits_c,
        average_active_capacity_gb_c,
        last_updated_c,
        percent_delta_c,
        sum_total_active_capacity_delta_gb_c,
        security_implementation_engineer_c,
        deployment_type_c,
        platform_type_c,
        cloud_user_id_reporting_c,
        send_email_to_training_coordinator_c,
        icae_assigned_c,
        icae_owner_c,
        lead_converted_date_time_c,
        provisioning_status_c,
        training_ops_status_c,
        gdrive_folder_url_c,
        gsrelationship_id_c,
        active_service_contract_c,
        technical_account_manager_c,
        support_subscription_provisioning_date_c,
        is_cloud_annual_customer_c,
        greatest_opty_line_c,
        cloud_domain_c,
        contract_active_c,
        number_of_contracts_on_subscription_c,
        subscription_owner_c,
        contract_id_18_digit_c,
        customer_has_s_3_account_c,
        first_ingestion_date_c,
        subscription_activities_c,
        onboarding_questionnaire_response_c

    from source

)

select * from renamed