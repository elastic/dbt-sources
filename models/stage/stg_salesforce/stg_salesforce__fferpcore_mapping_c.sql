
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_mapping_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_additional_lookup_field_c,
        fferpcore_correlation_source_key_c,
        fferpcore_correlation_strategy_c,
        fferpcore_correlation_target_key_c,
        fferpcore_filters_c,
        fferpcore_identifier_c,
        fferpcore_process_c,
        fferpcore_source_keys_c,
        fferpcore_source_path_c,
        fferpcore_static_data_c,
        fferpcore_static_description_c,
        fferpcore_target_child_type_c,
        fferpcore_target_keys_c,
        fferpcore_target_path_c,
        fferpcore_transformation_table_c,
        fferpcore_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
