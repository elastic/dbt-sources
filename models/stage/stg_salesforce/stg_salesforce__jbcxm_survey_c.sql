
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_anonymous_account_c,
        jbcxm_anonymous_token_id_c,
        jbcxm_anonymous_type_c,
        jbcxm_associated_object_field_label_c,
        jbcxm_associated_object_field_name_c,
        jbcxm_associated_object_label_c,
        jbcxm_associated_object_name_c,
        jbcxm_associated_object_related_field_c,
        jbcxm_associated_object_source_c,
        jbcxm_bounces_capture_email_c,
        jbcxm_campaign_id_c,
        jbcxm_code_c,
        jbcxm_customer_distribution_count_c,
        jbcxm_customer_reponsecount_c,
        jbcxm_days_to_auto_submit_c,
        jbcxm_description_c,
        jbcxm_email_body_c,
        jbcxm_email_open_url_c,
        jbcxm_email_service_c,
        jbcxm_email_subject_c,
        jbcxm_email_template_c,
        jbcxm_end_date_c,
        jbcxm_entity_type_c,
        jbcxm_ext_title_c,
        jbcxm_footer_messge_c,
        jbcxm_has_associated_object_c,
        jbcxm_header_logo_c,
        jbcxm_hide_publish_date_c,
        jbcxm_honour_date_restrictions_c,
        jbcxm_internal_submit_c,
        jbcxm_is_anonymous_c,
        jbcxm_is_expired_c,
        jbcxm_is_external_participant_c,
        jbcxm_is_lib_c,
        jbcxm_is_published_c,
        jbcxm_is_recurring_c,
        jbcxm_is_translation_c,
        jbcxm_language_c,
        jbcxm_last_sync_date_c,
        jbcxm_link_expire_days_c,
        jbcxm_meta_data_c,
        jbcxm_owner_c,
        jbcxm_participant_mapping_c,
        jbcxm_participant_rules_c,
        jbcxm_publish_date_c,
        jbcxm_published_url_c,
        jbcxm_relationship_type_c,
        jbcxm_send_address_c,
        jbcxm_start_date_c,
        jbcxm_status_c,
        jbcxm_survey_owner_c,
        jbcxm_thankyou_custom_c,
        jbcxm_thankyou_message_c,
        jbcxm_thankyou_type_c,
        jbcxm_title_c,
        jbcxm_translation_for_c,
        jbcxm_user_response_count_c,
        jbcxm_users_distribution_count_c,
        jbcxm_users_sent_count_c,
        jbcxm_welcome_message_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
