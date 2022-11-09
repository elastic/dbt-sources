
with source as (

    select * from {{ source('raw_netsuite', 'install_base_field_mappings_history') }}

),

renamed as (

    select
        date_created,
        install_base_field_id,
        install_base_field_mappings_ex,
        install_base_field_mappings_id,
        install_base_field_mappings_na,
        install_base_type_id,
        is_inactive,
        last_modified_date,
        mapping_direction_id,
        parent_id,
        transaction_field_id,
        transaction_field_type_id

    from source

)

select * from renamed
