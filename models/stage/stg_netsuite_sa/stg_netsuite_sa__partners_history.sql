
with source as (

    select * from {{ source('raw_netsuite_sa', 'partners_history') }}

),

renamed as (

    select
        partner_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_number,
        address,
        address1,
        address2,
        address3,
        allow_po_item,
        altemail,
        alternate_billing_email,
        altphone,
        annual_revenue_id,
        ap_priority_id,
        ar_collections,
        ar_follow_up_date,
        ar_specialist_id,
        assess_use_tax_on_billavatax,
        assigntasks,
        available_on_po,
        bic,
        brn,
        budget_approved,
        buying_time_frame_id,
        channel_tier_id,
        city,
        code,
        collection_notes,
        collection_status_id,
        collections_notes,
        collections_status_id,
        combo_number_of_employees,
        comments,
        company_size_id,
        companyname,
        country,
        create_date,
        current_access,
        current_annual_bonus_local_cu,
        current_annual_salary_local_c,
        customer_discount,
        customer_number,
        customer_since,
        date_current_bonus_effective,
        date_current_salary_effective,
        date_deleted,
        date_last_modified,
        dd_file_format_id,
        decision_maker_identified,
        denied_party_flag,
        department_id,
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
        exclude_from_automated_statem,
        exclude_from_collections,
        executive_alert_summary,
        exemption_certificate_expirat,
        exemption_certificate_no,
        fax,
        followup_date,
        foreign_ssn,
        full_name,
        home_phone,
        iban,
        ico,
        id_number_in_the_country_of_r,
        id_type_in_the_country_of_r_id,
        is_ar_specialist,
        is_person,
        isinactive,
        last_modified_date,
        last_sales_activity,
        latest_collection_note,
        location_id,
        lockout_notice_date,
        loginaccess,
        lsa_link,
        lsa_link_name,
        marquee_customer,
        mobile_phone,
        ms_active,
        ms_active_date,
        ms_inactive_date,
        multiple_locations,
        name,
        okta_id,
        other_software_considered_id,
        parent_company,
        partner_extid,
        partner_subscription_active,
        party_id,
        percent_complete,
        permissions,
        phone,
        print_on_check_as,
        prior_available_on_po_state,
        prior_eft_state,
        reference_classification_id,
        reference_notes,
        reference_status_id,
        regional_vp_id,
        registrant_company_info,
        relationship_id,
        remove_from_approvals_date,
        requires_billing_portal,
        resolution_status_id,
        restricted_party_screening__id,
        retained_until,
        risk_country_status_id,
        salesforce_account_id,
        salesforce_project_id,
        service_hold,
        sfdc_company_id,
        sfdc_contact_id,
        sfdc_ns_customer_id,
        sfdc_segment,
        shipping_address,
        sod_approval_request_for_new_,
        sod_employee_processing_sta_id,
        sod_status,
        sod_violation_file,
        software_switched_from_id,
        state,
        std_work_week_hours,
        subscription_active,
        subsidiary,
        super_geo,
        support_level_id,
        sync_to_sfdc,
        tax_classification_id,
        tax_contact_first_name,
        tax_contact_id,
        tax_contact_last_name,
        tax_contact_middle_name,
        tax_number,
        tax_number_0,
        third_party_integration_user,
        uen,
        uplift,
        uplift_cap_hidden,
        uplift_cap_type_hidden_id,
        uplift_type_id,
        url,
        vat_no__eu,
        vat_registration_no,
        vendor_bank_fees,
        vendor_description_id,
        vendor_payment_method_field_id,
        verified_taxexempt,
        webstore_parent_customer_id,
        wfn_employee_no,
        workday_department,
        workday_employee_id,
        workday_employee_type,
        workday_id,
        workday_internal_id,
        workday_location,
        workday_manager,
        workday_sales_rep,
        workday_sup_org,
        year_established,
        zipcode,
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
