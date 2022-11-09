
with source as (

    select * from {{ source('raw_netsuite_sa', 'install_base_field_mappings_history') }}

),

renamed as (

    select
        install_base_field_mappings_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        install_base_field_id,
        install_base_field_mappings_ex,
        install_base_field_mappings_na,
        install_base_type_id,
        is_inactive,
        last_modified_date,
        mapping_direction_id,
        parent_id,
        transaction_field_id,
        transaction_field_type_id,
        partition_date

    from source

)

select * from renamed
