
with source as (

    select * from {{ source('raw_salesforce', 'ob_1_output_template_c') }}

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
        ob_1_template_class_c,
        owner_id,
        system_modstamp,
        ob_1_attachment_message_c,
        ob_1_automation_criteria_c,
        ob_1_bcc_c,
        ob_1_bcc_sender_c,
        ob_1_cc_c,
        ob_1_content_type_c,
        ob_1_content_type_extension_c,
        ob_1_description_c,
        ob_1_interface_class_name_c,
        ob_1_is_default_for_class_c,
        ob_1_keep_history_c,
        ob_1_object_description_field_c,
        ob_1_object_name_c,
        ob_1_related_list_field_c,
        ob_1_reply_to_c,
        ob_1_require_approval_to_send_c,
        ob_1_save_only_c,
        ob_1_sender_display_name_c,
        ob_1_subject_c,
        ob_1_to_c,
        ob_1_use_intelligent_email_limit_management_c

    from source

)

select * from renamed
