
with source as (

    select * from {{ source('raw_salesforce', 'pdri_transformation_c') }}

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
        owner_id,
        pdri_data_set_c,
        pdri_data_set_element_c,
        pdri_data_set_field_c,
        pdri_destination_name_c,
        pdri_destination_relationship_name_c,
        pdri_relationship_c,
        pdri_source_name_c,
        pdri_type_c,
        system_modstamp

    from source

)

select * from renamed
