
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_mapping_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_allow_new_record_creation_on_lookup_c,
        ffirule_alternate_lookup_resolution_field_c,
        ffirule_integration_rule_c,
        ffirule_mapping_literal_c,
        ffirule_mapping_type_c,
        ffirule_source_field_c,
        ffirule_source_object_c,
        ffirule_source_resolution_control_field_c,
        ffirule_source_resolution_control_value_is_id_c,
        ffirule_source_sync_c,
        ffirule_source_value_is_id_c,
        ffirule_target_field_c,
        ffirule_target_lookup_resolution_field_c,
        ffirule_target_record_based_on_c,
        ffirule_target_record_type_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
