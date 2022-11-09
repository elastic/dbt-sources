
with source as (

    select * from {{ source('raw_netsuite', 'other_names_history') }}

),

renamed as (

    select
        account_number,
        address,
        address1,
        address2,
        address3,
        allow_po_item,
        altemail,
        altphone,
        annual_revenue_id,
        ar_follow_up_date,
        ar_specialist_id,
        assess_use_tax_on_billavatax,
        available_on_po,
        bic,
        brn,
        budget_approved,
        buying_time_frame_id,
        channel_tier_id,
        city,
        collection_notes,
        collection_status_id,
        combo_number_of_employees,
        comments,
        companyname,
        company_size_id,
        country,
        create_date,
        current_annual_bonus_local_cu,
        current_annual_salary_local_c,
        customer_discount,
        customer_number,
        customer_since,
        date_current_bonus_effective,
        date_current_salary_effective,
        date_last_modified,
        dd_file_format_id,
        decision_maker_identified,
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
        estimated_budget,
        executive_alert_summary,
        exemption_certificate_expirat,
        exemption_certificate_no,
        fax,
        foreign_ssn,
        full_name,
        home_phone,
        iban,
        ico,
        id_number_in_the_country_of_r,
        id_type_in_the_country_of_r_id,
        isinactive,
        is_ar_specialist,
        is_person,
        last_modified_date,
        last_sales_activity,
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
        other_name_extid,
        other_name_id,
        other_software_considered_id,
        parent_company,
        parent_id,
        party_id,
        percent_complete,
        phone,
        reference_classification_id,
        reference_notes,
        reference_status_id,
        regional_vp_id,
        registrant_company_info,
        relationship_id,
        requires_billing_portal,
        retained_until,
        salesforce_account_id,
        salesforce_project_id,
        service_hold,
        sfdc_company_id,
        sfdc_contact_id,
        sfdc_ns_customer_id,
        sfdc_segment,
        software_switched_from_id,
        state,
        std_work_week_hours,
        subsidiary,
        super_geo,
        support_level_id,
        sync_to_sfdc,
        tax_contact_first_name,
        tax_contact_id,
        tax_contact_last_name,
        tax_contact_middle_name,
        tax_number,
        uen,
        uplift,
        uplift_cap_hidden,
        uplift_cap_type_hidden_id,
        uplift_type_id,
        url,
        vat_no__eu,
        vat_registration_no,
        verified_taxexempt,
        wfn_employee_no,
        year_established,
        zipcode,
        entity_vat_id,
        partner_subscription_active,
        subscription_active,
        vendor_bank_fees,
        current_access,
        permissions,
        sod_employee_processing_sta_id,
        sod_status,
        sod_violation_file,
        third_party_integration_user,
        ap_priority_id,
        alternate_billing_email,
        webstore_parent_customer_id,
        remove_from_approvals_date,
        okta_id

    from source

)

select * from renamed