
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_dscustom_mapping_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_correlation_field_c,
        fferpcore_correlation_key_c,
        fferpcore_correlation_strategy_c,
        fferpcore_data_transformation_table_c,
        fferpcore_json_path_c,
        fferpcore_sequence_c,
        fferpcore_subscription_c,
        fferpcore_target_field_c,
        fferpcore_type_c,
        fferpcore_uniqueness_constraint_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        fferpcore_additional_lookup_field_c,
        fferpcore_filters_c,
        fferpcore_target_child_type_c

    from source

)

select * from renamed
