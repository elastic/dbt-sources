
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_fcr_deferred_update_item_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_additional_operation_flag_c,
        fcrm_assignment_rule_id_c,
        fcrm_campaign_c,
        fcrm_contact_c,
        fcrm_delete_pending_c,
        fcrm_do_notifications_c,
        fcrm_error_message_c,
        fcrm_exception_status_code_c,
        fcrm_is_deferred_create_c,
        fcrm_lead_c,
        fcrm_object_type_c,
        fcrm_r_assign_using_field_c,
        fcrm_r_cmnurture_timeout_c,
        fcrm_r_converted_lead_c,
        fcrm_r_defer_assignment_c,
        fcrm_r_first_owner_type_c,
        fcrm_r_first_queue_assigned_c,
        fcrm_r_inquiry_target_c,
        fcrm_r_inquiry_target_date_c,
        fcrm_r_net_new_lead_c,
        fcrm_r_nurture_timeout_c,
        fcrm_r_post_assign_notification_pending_c,
        fcrm_r_precedence_campaign_c,
        fcrm_r_precedence_response_c,
        fcrm_r_prior_score_c,
        fcrm_r_qr_c,
        fcrm_r_qr_date_c,
        fcrm_r_replaced_campaign_c,
        fcrm_r_replaced_response_c,
        fcrm_r_response_date_c,
        fcrm_r_response_score_c,
        fcrm_r_sar_c,
        fcrm_r_sar_date_c,
        fcrm_r_sar_owner_c,
        fcrm_r_sqr_c,
        fcrm_r_sqr_date_c,
        fcrm_r_sqr_won_c,
        fcrm_r_status_c,
        fcrm_r_status_last_set_c,
        fcrm_r_stored_owner_2_c,
        fcrm_r_stored_owner_c,
        fcrm_r_tqr_c,
        fcrm_reprocess_c,
        fcrm_response_id_c,
        fcrm_run_before_update_in_sequence_c,
        fcrm_source_c,
        fcrm_sync_response_fields_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        fcrm_fcr_current_lead_contact_status_c,
        fcrm_fcr_lead_contact_18_character_id_c,
        fcrm_object_name_c,
        fcrm_view_response_c

    from source

)

select * from renamed
