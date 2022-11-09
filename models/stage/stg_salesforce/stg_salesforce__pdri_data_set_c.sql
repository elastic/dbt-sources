
with source as (

    select * from {{ source('raw_salesforce', 'pdri_data_set_c') }}

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
        pdri_active_c,
        pdri_all_fields_c,
        pdri_batch_size_c,
        pdri_create_missing_c,
        pdri_custom_upsert_record_handling_c,
        pdri_data_set_name_c,
        pdri_description_c,
        pdri_destination_object_c,
        pdri_destination_schema_org_c,
        pdri_enable_transformations_c,
        pdri_folder_c,
        pdri_ignore_namespace_c,
        pdri_ignore_namespace_name_c,
        pdri_ignore_relationship_constraints_c,
        pdri_object_name_c,
        pdri_origin_connection_c,
        pdri_override_root_settings_c,
        pdri_query_filter_c,
        pdri_record_selection_limit_c,
        pdri_replicate_owner_c,
        pdri_replicate_record_type_c,
        pdri_root_c,
        pdri_root_data_set_c,
        pdri_set_audit_fields_c,
        pdri_skip_inserts_c,
        pdri_skip_updates_c,
        pdri_sync_picklist_values_c,
        pdri_use_destination_schema_c,
        pdri_use_local_schema_c,
        system_modstamp,
        pdri_exclude_managed_schema_namespaces_c,
        pdri_exclude_unmanaged_schema_c

    from source

)

select * from renamed
