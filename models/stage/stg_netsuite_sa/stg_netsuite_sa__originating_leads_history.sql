
with source as (

    select * from {{ source('raw_netsuite_sa', 'originating_leads_history') }}

),

renamed as (

    select
        customer_id,
        _fivetran_synced,
        accountnumber,
        allow_po_item,
        altemail,
        alternate_billing_email,
        alternate_contact_id,
        altphone,
        amount_complete,
        annual_revenue_id,
        ap_priority_id,
        ar_collections,
        ar_follow_up_date,
        ar_specialist_id,
        assess_use_tax_on_billavatax,
        available_on_po,
        bic,
        billaddress,
        brn,
        budget_approved,
        buying_time_frame_id,
        calculated_end,
        category_0,
        channel_tier_id,
        city,
        collection_notes,
        collection_status_id,
        collections_notes,
        collections_status_id,
        combo_number_of_employees,
        comments,
        company_size_id,
        companyname,
        consol_days_overdue,
        consol_deposit_balance,
        consol_deposit_balance_foreign,
        consol_openbalance,
        consol_openbalance_foreign,
        consol_unbilled_orders,
        consol_unbilled_orders_foreign,
        converted_to_contact_id,
        converted_to_id,
        cost_estimate,
        country,
        create_date,
        credithold,
        creditlimit,
        currency_id,
        current_access,
        current_annual_bonus_local_cu,
        current_annual_salary_local_c,
        customer_discount,
        customer_number,
        customer_since,
        customer_type_id,
        date_closed,
        date_convsersion,
        date_current_bonus_effective,
        date_current_salary_effective,
        date_first_order,
        date_first_sale,
        date_gross_lead,
        date_last_modified,
        date_last_order,
        date_last_sale,
        date_lead,
        date_prospect,
        days_overdue,
        dd_file_format_id,
        decision_maker_identified,
        default_order_priority,
        default_receivables_account_id,
        department_id,
        deposit_balance,
        deposit_balance_foreign,
        dic,
        direct_debit,
        eft_bill_payment,
        eft_customer_refund_payment,
        eft_file_format_id,
        elastic_cloud_id,
        email,
        email_address_for_payment_not,
        employee_number,
        entity_vat_id,
        estimated_budget,
        exclude_from_collections,
        executive_alert_summary,
        exemption_certificate_expirat,
        exemption_certificate_no,
        expected_close,
        fax,
        first_sale_period_id,
        first_visit,
        firstname,
        followup_date,
        foreign_ssn,
        full_name,
        home_phone,
        iban,
        ico,
        id_number_in_the_country_of_r,
        id_type_in_the_country_of_r_id,
        is_ar_specialist,
        is_exempt_time,
        is_explicit_conversion,
        is_job,
        is_person,
        is_productive_time,
        is_utilized_time,
        isemailhtml,
        isemailpdf,
        isinactive,
        istaxable,
        job_end,
        job_start,
        job_type_id,
        last_modified_date,
        last_sale_period_id,
        last_sales_activity,
        last_visit,
        lastname,
        lead_source_id,
        line1,
        line2,
        line3,
        location_id,
        lockout_notice_date,
        loginaccess,
        lsa_link,
        lsa_link_name,
        marquee_customer,
        middlename,
        mobile_phone,
        ms_active,
        ms_active_date,
        ms_inactive_date,
        multiple_locations,
        multiple_price_id,
        name,
        okta_id,
        openbalance,
        openbalance_foreign,
        other_software_considered_id,
        parent_company,
        parent_id,
        partner_id,
        partner_subscription_active,
        party_id,
        payment_terms_id,
        percent_complete,
        permissions,
        phone,
        primary_contact_id,
        print_on_check_as,
        probability,
        projected_end,
        reference_classification_id,
        reference_notes,
        reference_status_id,
        referrer,
        regional_vp_id,
        registrant_company_info,
        relationship_id,
        reminderdays,
        remove_from_approvals_date,
        renewal,
        requires_billing_portal,
        resalenumber,
        retained_until,
        rev_rec_forecast_rule_id,
        rev_rec_forecast_template,
        revenue_estimate,
        sales_rep_id,
        sales_territory_id,
        salesforce_account_id,
        salesforce_project_id,
        salutation,
        service_hold,
        sfdc_company_id,
        sfdc_contact_id,
        sfdc_ns_customer_id,
        sfdc_segment,
        ship_complete,
        shipaddress,
        sod_employee_processing_sta_id,
        sod_status,
        sod_violation_file,
        software_switched_from_id,
        state,
        status,
        status_descr,
        status_probability,
        status_read_only,
        std_work_week_hours,
        subscription_active,
        subsidiary_id,
        super_geo,
        support_level_id,
        sync_to_sfdc,
        tax_contact_first_name,
        tax_contact_id,
        tax_contact_last_name,
        tax_contact_middle_name,
        tax_item_id,
        tax_number,
        third_party_acct,
        third_party_carrier,
        third_party_country,
        third_party_integration_user,
        third_party_zip_code,
        top_level_parent_id,
        uen,
        unbilled_orders,
        unbilled_orders_foreign,
        uplift,
        uplift_cap_hidden,
        uplift_cap_type_hidden_id,
        uplift_type_id,
        url,
        use_percent_complete_override,
        vat_no__eu,
        vat_registration_no,
        vendor_bank_fees,
        verified_taxexempt,
        web_lead,
        webstore_parent_customer_id,
        wfn_employee_no,
        year_established,
        zipcode,
        is_supervisor_inactive,
        workday_id,
        workday_sup_org,
        workday_employee_id,
        sod_approval_request_for_new_,
        workday_department,
        workday_employee_type,
        workday_location,
        workday_manager,
        workday_sales_rep,
        workday_internal_id,
        latest_collection_note,
        _fivetran_deleted,
        date_deleted,
        denied_party_flag,
        prior_available_on_po_state,
        prior_eft_state,
        resolution_status_id,
        restricted_party_screening__id,
        risk_country_status_id,
        tax_classification_id,
        vendor_description_id,
        exclude_from_automated_statem,
        vendor_payment_method_field_id,
        peo,
        do_not_sync_workday_to_netsui,
        backup_withholding_required,
        tin_match,
        foreign_nra_vendor,
        old_vendor_description_id,
        new_vendor_term_updated,
        portal_name,
        customer_dd_entity_bank_sub_id,
        cust_ref_file_format_id,
        customer_refund_entity_bank__0,
        customer_dd_entity_bank_for_id,
        vendor_entity_bank_format_id,
        direct_debit_file_format_id,
        vendor_entity_bank_subsidia_id,
        customer_refund_entity_bank_id,
        entity_vat_id_web_store_only,
        collector_number_id,
        partition_date

    from source

)

select * from renamed
