
with source as (

    select * from {{ source('raw_salesforce', 'pdri_data_set_field_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pdri_copy_relationship_value_c,
        pdri_create_missing_c,
        pdri_data_set_c,
        pdri_delay_insert_c,
        pdri_deploy_after_child_relationship_c,
        pdri_deploy_last_c,
        pdri_external_id_c,
        pdri_fixed_value_c,
        pdri_fixed_value_input_c,
        pdri_postfix_c,
        pdri_prefix_c,
        pdri_scramble_value_c,
        pdri_set_empty_c,
        pdri_sync_picklist_values_c,
        pdri_temporary_insert_value_c,
        system_modstamp

    from source

)

select * from renamed
