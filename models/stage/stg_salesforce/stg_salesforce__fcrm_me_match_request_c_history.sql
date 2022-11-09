
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_me_match_request_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_application_c,
        fcrm_configuration_set_c,
        fcrm_external_data_c,
        fcrm_match_object_type_c,
        fcrm_matching_batch_id_c,
        fcrm_original_source_ids_c,
        fcrm_parent_request_c,
        fcrm_potential_match_ids_c,
        fcrm_source_ids_c,
        fcrm_source_object_type_c,
        fcrm_state_component_instance_c,
        fcrm_state_component_internal_state_c,
        fcrm_state_high_level_c,
        fcrm_triggering_condition_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
