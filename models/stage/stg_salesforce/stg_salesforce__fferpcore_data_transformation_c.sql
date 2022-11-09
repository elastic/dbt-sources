
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_data_transformation_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_data_transformation_table_c,
        fferpcore_required_source_values_c,
        fferpcore_source_value_1_c,
        fferpcore_source_value_2_c,
        fferpcore_target_value_c,
        fferpcore_uniqueness_constraint_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
