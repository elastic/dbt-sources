
with source as (

    select * from {{ source('raw_salesforce', 'partner_registration_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_end_user_c,
        account_partner_c,
        account_relationship_c,
        city_c,
        company_c,
        contact_c,
        country_c,
        created_by_id,
        created_date,
        currency_iso_code,
        deal_approved_date_c,
        deal_source_c,
        deal_submitted_by_c,
        elastic_stack_installed_c,
        email_c,
        engagement_type_c,
        estimated_elastic_search_node_count_c,
        estimated_go_live_date_c,
        estimated_subscription_value_c,
        first_name_c,
        have_you_discussed_project_with_prospect_c,
        is_approved_from_contact_c,
        is_approved_from_lead_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_name_c,
        last_referenced_date,
        last_viewed_date,
        lead_c,
        name,
        new_logo_candidate_c,
        not_approved_reason_c,
        numberof_employees_c,
        opportunity_c,
        owner_assigned_c,
        owner_id,
        partner_account_c,
        partner_company_name_c,
        partner_description_c,
        partner_sales_contact_name_c,
        phone_c,
        postal_code_c,
        primary_purchasing_driver_c,
        product_type_c,
        project_description_c,
        project_name_c,
        project_status_c,
        prospect_willing_to_speak_to_elastic_c,
        public_sector_c,
        record_type_id,
        registration_expiration_date_c,
        sales_contact_email_c,
        sales_contact_phone_c,
        sdr_owner_c,
        state_c,
        status_c,
        street_c,
        system_modstamp,
        targeted_deal_close_date_c,
        territory_stamp_c,
        title_c,
        total_project_value_c,
        use_case_partner_c,
        create_lead_c,
        deployment_method_c,
        is_prospect_u_s_federal_customer_c,
        is_this_an_existing_customer_for_your_co_c,
        next_step_for_the_opportunity_c,
        prospect_contact_role_c,
        rvaccount_c,
        rvmember_c,
        deal_url_c,
        emerging_sales_territory_c,
        is_converted_c,
        opp_record_type_c,
        sdr_owner_role_c,
        sf_account_c,
        territory_role_name_c,
        campaign_c,
        record_referance_c,
        opp_stage_c,
        rv_account_formula_c,
        rv_member_primary_c,
        product_c,
        opportunity_status_c,
        campaigns_in_a_box_pilot_c,
        converted_date_c,
        approved_date_c,
        agreed_to_referral_terms_c,
        is_this_a_renewal_deal_c,
        use_cases_c,
        deal_reg_listed_elastic_rep_c,
        delivery_type_c

    from source

)

select * from renamed
