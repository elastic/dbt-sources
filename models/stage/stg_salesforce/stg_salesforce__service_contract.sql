
with source as (

    select * from {{ source('raw_salesforce', 'service_contract') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id,
        activation_date,
        annualized_subscription_year_1_amount_c,
        annualized_subscription_year_1_amt_serv_c,
        approval_status,
        auto_renewal_c,
        billing_city,
        billing_country,
        billing_geocode_accuracy,
        billing_interval_c,
        billing_latitude,
        billing_longitude,
        billing_method_c,
        billing_postal_code,
        billing_state,
        billing_street,
        certificate_of_insurance_c,
        choice_of_law_c,
        choice_of_law_terms_c,
        cloud_conversion_date_c,
        cloud_domain_c,
        cloud_domain_reference_number_c,
        cloud_downgraded_c,
        cloud_paying_c,
        cloud_sign_up_date_c,
        cloud_trial_end_date_c,
        cloud_trial_start_date_c,
        cloud_user_id_c,
        cloud_user_id_reporting_c,
        cloud_user_id_start_date_c,
        contact_id,
        contract_number,
        contract_type_c,
        created_by_id,
        created_date,
        currency_iso_code,
        customer_health_score_c,
        daily_spend_c,
        debooked_my_amount_c,
        delete_interest_payment_for_late_paym_c,
        deleted_swiftype_account_c,
        description,
        discount,
        domestic_company_c,
        eliminate_attorneys_fees_provision_c,
        end_date,
        external_id_c,
        grand_total,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        migrated_c,
        mrr_snapshot_c,
        mtd_spend_c,
        multiple_projects_c,
        my_upsell_c,
        name,
        owner_id,
        parent_service_contract_id,
        payment_terms_c,
        plan_price_per_month_at_month_start_c,
        plan_price_per_month_at_quarter_c,
        plan_price_per_month_c,
        plan_subscription_history_c,
        pricebook_2_id,
        primary_account_email_c,
        removing_audit_rights_c,
        removing_audit_rights_reason_other_c,
        removing_customer_identification_c,
        removing_non_solicitation_c,
        removing_rescheduling_fee_services_c,
        renewal_acv_without_credits_c,
        renewal_amount_exception_c,
        renewal_base_amount_exception_c,
        renewal_booking_acv_c,
        renewal_booking_tcv_c,
        renewal_opportunity_c,
        renewal_reporting_exception_c,
        renewal_sync_time_c,
        renewal_tcv_without_credits_c,
        renewed_subscription_amount_c,
        root_service_contract_id,
        sbqqsc_amendment_opportunity_record_type_id_c,
        sbqqsc_amendment_opportunity_stage_c,
        sbqqsc_amendment_owner_c,
        sbqqsc_amendment_pricebook_id_c,
        sbqqsc_amendment_renewal_behavior_c,
        sbqqsc_amendment_start_date_c,
        sbqqsc_company_signed_c,
        sbqqsc_company_signed_date_c,
        sbqqsc_customer_signed_c,
        sbqqsc_customer_signed_date_c,
        sbqqsc_customer_signed_title_c,
        sbqqsc_default_renewal_contact_roles_c,
        sbqqsc_default_renewal_partners_c,
        sbqqsc_disable_amendment_co_term_c,
        sbqqsc_master_contract_c,
        sbqqsc_mdqrenewal_behavior_c,
        sbqqsc_opportunity_c,
        sbqqsc_order_c,
        sbqqsc_owner_expiration_notice_c,
        sbqqsc_preserve_bundle_structure_upon_renewals_c,
        sbqqsc_renewal_forecast_c,
        sbqqsc_renewal_opportunity_c,
        sbqqsc_renewal_opportunity_record_type_id_c,
        sbqqsc_renewal_opportunity_stage_c,
        sbqqsc_renewal_owner_c,
        sbqqsc_renewal_pricebook_id_c,
        sbqqsc_renewal_quoted_c,
        sbqqsc_renewal_term_c,
        sbqqsc_renewal_uplift_rate_c,
        sbqqsc_subscription_quantities_combined_c,
        service_contract_c,
        shipping_city,
        shipping_country,
        shipping_geocode_accuracy,
        shipping_handling,
        shipping_latitude,
        shipping_longitude,
        shipping_postal_code,
        shipping_state,
        shipping_street,
        special_terms,
        start_date,
        status,
        subscription_bookings_acv_c,
        subscription_bookings_tcv_c,
        subscription_credit_c,
        subscription_max_acv_c,
        subscription_max_acv_override_c,
        subscription_tcv_c,
        subscription_total_acv_c,
        support_level_c,
        swiftype_account_id_c,
        swiftype_account_name_c,
        swiftype_admin_url_c,
        swiftype_email_c,
        swiftype_id_c,
        swiftype_provisioned_c,
        swiftype_transaction_id_c,
        swiftype_type_c,
        system_modstamp,
        tax,
        term,
        total_booking_acv_c,
        total_bookings_tcv_c,
        transaction_id_c,
        acv_upsell_c,
        company_c,
        send_first_alert_c,
        send_second_alert_c,
        sbqqsc_quote_c,
        contact_email_c,
        contract_due_days_c,
        count_c,
        customer_health_probability_c,
        end_date_time_c,
        expected_revenue_c,
        expected_trx_c,
        foundid_c,
        helpdesk_url_c,
        is_swiftype_c,
        length_in_months_c,
        line_item_count,
        ns_id_c,
        ns_sync_temp_c,
        number_of_subscriptions_c,
        opp_close_date_c,
        opportunity_name_c,
        parent_opportunity_projects_c,
        quote_bundle_type_c,
        quote_type_c,
        renewal_amount_c,
        renewal_amount_variation_c,
        renewal_is_closed_c,
        renewal_number_of_subs_c,
        renewal_stage_c,
        renewal_start_date_c,
        sbqqsc_active_contract_c,
        sbqqsc_expiration_date_c,
        sbqqsc_opportunity_pricebook_id_c,
        service_contract_id_18_digits_c,
        status_reporting_c,
        subscription_max_acv_with_override_c,
        subtotal,
        swiftype_account_id_parent_c,
        swiftype_admin_url_parent_c,
        total_price,
        true_contract_expiration_date_c,
        upsell_credit_c,
        product_field_c,
        service_contract_count_c,
        churn_comment_c,
        churn_reason_c,
        account_oppty_owner_self_c,
        account_territory_owner_self_c,
        expansion_renewal_value_c,
        renewal_rate_c,
        renewal_rate_with_upsell_c,
        renewal_value_c,
        churn_date_c,
        deactivate_date_c,
        max_acv_amount_c,
        renewal_opportunity_subscription_max_acv_c,
        renewed_subscription_amount_renewal_c,
        billing_arrangement_c,
        billing_frequency_c,
        payment_terms_2_c,
        gcp_account_id_c,
        contract_c

    from source

)

select * from renamed
