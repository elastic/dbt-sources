
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_batch_settings_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_billing_document_calculate_tax_scope_size_c,
        fferpcore_chatter_c,
        fferpcore_email_c,
        fferpcore_maximum_queue_size_c,
        fferpcore_message_deletion_scope_size_c,
        fferpcore_message_delivery_chunking_scope_size_c,
        fferpcore_message_delivery_error_detection_scope_size_c,
        fferpcore_message_delivery_max_loop_count_c,
        fferpcore_message_delivery_preparation_scope_size_c,
        fferpcore_message_delivery_routing_scope_size_c,
        fferpcore_notification_recipients_c,
        fferpcore_sequence_event_splitting_size_c,
        fferpcore_sequence_generation_scope_size_c,
        fferpcore_sequence_handler_max_records_c,
        fferpcore_sequence_handler_max_sobject_types_c,
        fferpcore_task_c,
        fferpcore_user_information_manage_user_scope_size_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
