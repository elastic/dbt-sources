
with source as (

    select * from {{ source('raw_salesforce', 'da_scoop_composer_scoop_composer_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        da_scoop_composer_account_notes_custom_field_name_c,
        da_scoop_composer_add_only_groove_users_as_invitees_c,
        da_scoop_composer_additional_fields_for_calendar_events_c,
        da_scoop_composer_additional_fields_for_email_logging_c,
        da_scoop_composer_allow_automatic_calendar_sync_c,
        da_scoop_composer_allow_automatic_email_sync_c,
        da_scoop_composer_allow_inline_create_c,
        da_scoop_composer_allow_inline_editing_c,
        da_scoop_composer_alternative_email_matching_c,
        da_scoop_composer_always_mirror_events_in_google_calendar_c,
        da_scoop_composer_best_match_email_logging_c,
        da_scoop_composer_block_teammate_email_opens_c,
        da_scoop_composer_calendar_email_c,
        da_scoop_composer_contact_notes_custom_field_name_c,
        da_scoop_composer_create_unresolved_items_c,
        da_scoop_composer_domain_blacklist_applies_to_tracking_c,
        da_scoop_composer_domain_blacklist_c,
        da_scoop_composer_dont_track_rsvp_status_c,
        da_scoop_composer_email_to_saleforce_association_policy_c,
        da_scoop_composer_email_to_username_suffix_c,
        da_scoop_composer_enable_advanced_email_tracking_c,
        da_scoop_composer_enable_calendar_c,
        da_scoop_composer_enable_easy_create_case_c,
        da_scoop_composer_enable_easy_create_contact_c,
        da_scoop_composer_enable_easy_create_lead_c,
        da_scoop_composer_enable_email_bonus_features_c,
        da_scoop_composer_enable_email_tracking_c,
        da_scoop_composer_enable_groove_history_c,
        da_scoop_composer_enable_linked_in_sales_navigator_c,
        da_scoop_composer_enable_search_salesforce_from_gmail_c,
        da_scoop_composer_exact_match_ownership_c,
        da_scoop_composer_ignored_attachment_types_c,
        da_scoop_composer_lead_notes_custom_field_name_c,
        da_scoop_composer_make_performance_data_transparent_c,
        da_scoop_composer_maximum_attachment_size_c,
        da_scoop_composer_only_sync_crm_related_google_events_c,
        da_scoop_composer_reparent_email_attachments_c,
        da_scoop_composer_respect_sharing_rules_when_logging_c,
        da_scoop_composer_reverse_number_lookup_c,
        da_scoop_composer_search_and_select_objects_c,
        da_scoop_composer_tracking_url_c,
        da_scoop_composer_use_groove_templates_only_c,
        da_scoop_composer_use_inline_groove_views_legacy_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
