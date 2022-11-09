
with source as (

    select * from {{ source('raw_salesforce', 'pdri_field_value_mapping_c') }}

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
        name,
        pdri_data_set_field_c,
        pdri_referenced_data_set_element_c,
        pdri_referenced_data_set_object_name_c,
        pdri_root_data_set_id_c,
        system_modstamp

    from source

)

select * from renamed
