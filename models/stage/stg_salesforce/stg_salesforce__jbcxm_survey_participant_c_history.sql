
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_survey_participant_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        jbcxm_account_c,
        jbcxm_advanced_outreach_participant_id_c,
        jbcxm_anonymous_temp_user_c,
        jbcxm_anonymous_token_id_c,
        jbcxm_associated_object_record_id_c,
        jbcxm_browser_c,
        jbcxm_contact_c,
        jbcxm_context_message_c,
        jbcxm_context_url_c,
        jbcxm_cstask_c,
        jbcxm_delivery_response_c,
        jbcxm_display_name_c,
        jbcxm_do_partial_submit_c,
        jbcxm_email_c,
        jbcxm_email_open_date_c,
        jbcxm_email_open_url_c,
        jbcxm_email_sent_count_c,
        jbcxm_email_sent_date_c,
        jbcxm_first_name_c,
        jbcxm_gscase_c,
        jbcxm_gsopportunity_c,
        jbcxm_internal_submission_by_c,
        jbcxm_internal_submission_date_c,
        jbcxm_is_internally_submitted_c,
        jbcxm_is_responded_event_published_c,
        jbcxm_language_c,
        jbcxm_last_response_record_time_c,
        jbcxm_opened_c,
        jbcxm_partial_response_c,
        jbcxm_processed_c,
        jbcxm_relationship_c,
        jbcxm_relationship_contact_c,
        jbcxm_response_date_c,
        jbcxm_response_status_c,
        jbcxm_response_url_c,
        jbcxm_responsed_c,
        jbcxm_role_c,
        jbcxm_scheduled_c,
        jbcxm_scheduled_job_id_c,
        jbcxm_sent_c,
        jbcxm_sent_email_c,
        jbcxm_survey_distribution_schedule_id_c,
        jbcxm_survey_id_c,
        jbcxm_survey_master_c,
        jbcxm_survey_opened_c,
        jbcxm_survey_opened_date_c,
        jbcxm_survey_title_c,
        jbcxm_survey_url_c,
        jbcxm_test_user_c,
        jbcxm_token_c,
        jbcxm_undelivered_c,
        jbcxm_unique_participant_key_c,
        jbcxm_unsubscribed_c,
        jbcxm_user_id_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
