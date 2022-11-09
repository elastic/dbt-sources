
with source as (

    select * from {{ source('raw_salesforce', 'dsfs_docu_sign_envelope_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dsfs_chatter_env_completed_c,
        dsfs_chatter_env_completed_text_c,
        dsfs_chatter_env_declined_c,
        dsfs_chatter_env_declined_text_c,
        dsfs_chatter_env_delivered_c,
        dsfs_chatter_env_delivered_text_c,
        dsfs_chatter_env_sent_c,
        dsfs_chatter_env_sent_text_c,
        dsfs_chatter_env_voided_c,
        dsfs_chatter_env_voided_text_c,
        dsfs_chatter_recip_completed_c,
        dsfs_chatter_recip_completed_text_c,
        dsfs_chatter_recip_declined_c,
        dsfs_chatter_recip_declined_text_c,
        dsfs_chatter_recip_delivered_c,
        dsfs_chatter_recip_delivered_text_c,
        dsfs_chatter_recip_sent_c,
        dsfs_chatter_recip_sent_text_c,
        dsfs_chatter_recip_signed_c,
        dsfs_chatter_recip_signed_text_c,
        dsfs_chatter_updates_enabled_c,
        dsfs_contact_2_e_sign_doc_01_c,
        dsfs_custom_field_1_c,
        dsfs_custom_field_1_name_c,
        dsfs_custom_field_1_value_c,
        dsfs_custom_field_2_c,
        dsfs_custom_field_2_name_c,
        dsfs_custom_field_2_value_c,
        dsfs_custom_field_3_c,
        dsfs_custom_field_3_name_c,
        dsfs_custom_field_3_value_c,
        dsfs_day_prior_to_warn_of_expiration_c,
        dsfs_days_before_envelope_is_expired_voided_c,
        dsfs_docu_sign_email_message_c,
        dsfs_docu_sign_email_subject_c,
        dsfs_docu_sign_envelope_id_c,
        dsfs_docu_sign_envelope_sent_c,
        dsfs_document_id_c,
        dsfs_document_name_c,
        dsfs_envelope_configuration_c,
        dsfs_expire_void_envelope_c,
        dsfs_i_agree_to_terms_c,
        dsfs_i_will_sign_c,
        dsfs_lead_2_e_sign_doc_01_c,
        dsfs_reminder_interval_c,
        dsfs_reminder_repeat_interval_in_days_c,
        dsfs_send_reminder_c,
        dsfs_source_object_c,
        dsfs_source_object_parent_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        dsfs_sender_c

    from source

)

select * from renamed
