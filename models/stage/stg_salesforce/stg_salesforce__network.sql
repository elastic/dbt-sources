
with source as (

    select * from {{ source('raw_salesforce', 'network') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        allowed_extensions,
        case_comment_email_template_id,
        change_password_email_template_id,
        created_by_id,
        created_date,
        description,
        email_footer_logo_id,
        email_footer_text,
        email_sender_address,
        email_sender_name,
        first_activation_date,
        forgot_password_email_template_id,
        last_modified_by_id,
        last_modified_date,
        max_file_size_kb,
        name,
        new_sender_address,
        options_allow_internal_user_login,
        options_allow_members_to_flag,
        options_cwbanner_state,
        options_direct_messages_enabled,
        options_einstein_answers_enabled,
        options_enable_talking_about_stats,
        options_enable_topic_assignment_rules,
        options_gather_customer_sentiment_data,
        options_guest_chatter_enabled,
        options_guest_file_access_enabled,
        options_invitations_enabled,
        options_knowledgeable_enabled,
        options_network_sentiment_analysis,
        options_nickname_display_enabled,
        options_private_messages_enabled,
        options_reputation_enabled,
        options_reputation_record_conversations_disabled,
        options_self_registration_enabled,
        options_send_welcome_email,
        options_show_all_network_settings,
        options_site_as_container_enabled,
        options_topic_suggestions_enabled,
        options_up_down_vote_enabled,
        self_reg_profile_id,
        status,
        system_modstamp,
        url_path_prefix,
        welcome_email_template_id,
        lockout_email_template_id,
        options_disable_workspace_info,
        options_einstein_answers_kaenabled,
        options_einstein_answers_qaenabled,
        options_einstein_answers_snippet_enabled,
        options_member_visibility,
        options_mobile_image_optimization_enabled,
        options_recognition_badging_enabled,
        options_threaded_discussions_enabled,
        verification_email_template_id,
        _fivetran_deleted,
        chg_email_ver_new_email_template_id,
        chg_email_ver_old_email_template_id,
        options_action_override_enabled,
        options_guest_member_visibility,
        device_act_email_template_id,
        options_profile_based_layouts_for_knowledge_search_enabled,
        options_experience_bundle_based_sna_override_enabled,
        self_reg_micro_batch_sub_error_email_template_id

    from source

)

select * from renamed
