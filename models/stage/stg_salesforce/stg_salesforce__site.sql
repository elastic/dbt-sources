
with source as (

    select * from {{ source('raw_salesforce', 'site') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        admin_id,
        analytics_tracking_code,
        clickjack_protection_level,
        created_by_id,
        created_date,
        daily_bandwidth_limit,
        daily_bandwidth_used,
        daily_request_time_limit,
        daily_request_time_used,
        description,
        guest_user_id,
        last_modified_by_id,
        last_modified_date,
        master_label,
        monthly_page_views_entitlement,
        name,
        options_allow_guest_support_api,
        options_allow_home_page,
        options_allow_standard_answers_pages,
        options_allow_standard_ideas_pages,
        options_allow_standard_lookups,
        options_allow_standard_portal_pages,
        options_allow_standard_search,
        options_browser_xss_protection,
        options_content_sniffing_protection,
        options_csp_upgrade_insecure_requests,
        options_enable_feeds,
        options_referrer_policy_origin_when_cross_origin,
        options_require_https,
        site_type,
        status,
        subdomain,
        system_modstamp,
        url_path_prefix,
        _fivetran_deleted,
        guest_record_default_owner_id,
        options_allow_guest_payments_api,
        options_has_stored_path_prefix,
        options_cookie_consent,
        options_redirect_to_custom_domain,
        options_cache_public_vf_pages_in_proxies,
        archive_status,
        archived_date,
        archived_by_id

    from source

)

select * from renamed
