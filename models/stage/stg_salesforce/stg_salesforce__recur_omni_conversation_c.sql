
with source as (

    select * from {{ source('raw_salesforce', 'recur_omni_conversation_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        record_type_id,
        recur_omni_allow_change_owner_c,
        recur_omni_browser_agent_c,
        recur_omni_completed_datetime_c,
        recur_omni_confirm_message_1_c,
        recur_omni_confirm_message_2_c,
        recur_omni_contact_type_c,
        recur_omni_conversation_external_id_c,
        recur_omni_entity_c,
        recur_omni_ip_address_c,
        recur_omni_is_chatbot_c,
        recur_omni_is_sent_conversation_email_c,
        recur_omni_language_c,
        recur_omni_last_message_c,
        recur_omni_location_country_c,
        recur_omni_media_json_c,
        recur_omni_message_json_c,
        recur_omni_mt_4_account_number_c,
        recur_omni_objective_c,
        recur_omni_omni_channel_c,
        recur_omni_omni_channel_display_name_c,
        recur_omni_omni_channel_id_c,
        recur_omni_omni_channel_user_name_c,
        recur_omni_omni_external_id_c,
        recur_omni_require_reassign_c,
        recur_omni_status_c,
        recur_omni_summary_c,
        recur_omni_supervisor_comment_c,
        recur_omni_supervisor_feedback_c,
        recur_omni_target_contact_email_c,
        recur_omni_target_contact_name_c,
        recur_omni_target_contact_object_api_name_c,
        recur_omni_target_contact_phone_c,
        recur_omni_target_contact_record_id_c,
        recur_omni_time_spend_c,
        recur_omni_user_comment_c,
        recur_omni_user_feedback_c,
        system_modstamp

    from source

)

select * from renamed
