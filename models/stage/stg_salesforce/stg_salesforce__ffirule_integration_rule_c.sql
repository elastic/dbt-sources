
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_email_template_c,
        ffirule_partial_save_c,
        ffirule_rule_explanation_c,
        ffirule_scope_size_c,
        ffirule_source_object_c,
        ffirule_source_object_name_field_c,
        ffirule_source_object_process_field_c,
        ffirule_source_object_processed_field_c,
        ffirule_source_object_reference_to_target_field_c,
        ffirule_sync_enabled_c,
        ffirule_sync_is_master_c,
        ffirule_target_creation_on_source_insert_c,
        ffirule_target_object_c,
        ffirule_target_object_name_field_c,
        ffirule_target_object_processed_field_c,
        ffirule_target_object_source_count_field_c,
        ffirule_target_object_sync_active_field_c,
        ffirule_target_object_sync_control_field_c,
        ffirule_target_object_sync_control_when_c,
        ffirule_target_source_maximum_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
