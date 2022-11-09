
with source as (

    select * from {{ source('raw_salesforce', 'organization') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        city,
        compliance_bcc_email,
        country,
        created_by_id,
        created_date,
        default_account_access,
        default_calendar_access,
        default_campaign_access,
        default_case_access,
        default_contact_access,
        default_lead_access,
        default_locale_sid_key,
        default_opportunity_access,
        default_pricebook_access,
        division,
        fax,
        fiscal_year_start_month,
        geocode_accuracy,
        instance_name,
        is_read_only,
        is_sandbox,
        language_locale_key,
        last_modified_by_id,
        last_modified_date,
        latitude,
        longitude,
        monthly_page_views_entitlement,
        monthly_page_views_used,
        name,
        namespace_prefix,
        num_knowledge_service,
        organization_type,
        phone,
        postal_code,
        preferences_activity_analytics_enabled,
        preferences_require_opportunity_products,
        preferences_terminate_oldest_session,
        preferences_transaction_security_policy,
        primary_contact,
        receives_admin_info_emails,
        receives_info_emails,
        signup_country_iso_code,
        state,
        street,
        system_modstamp,
        trial_expiration_date,
        ui_skin,
        uses_start_date_as_fiscal_year_name,
        web_to_case_default_origin,
        preferences_lightning_login_enabled,
        preferences_only_llperm_user_allowed,
        preferences_auto_select_individual_on_merge,
        preferences_consent_management_enabled,
        preferences_individual_auto_create_enabled,
        time_zone_sid_key,
        delegated_authentication_service_url

    from source

)

select * from renamed
