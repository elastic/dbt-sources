
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_field_schema_history') }}

),

renamed as (

    select
        tax_field_schema_id,
        _fivetran_deleted,
        _fivetran_synced,
        alternate_code,
        date_created,
        date_deleted,
        default_0,
        field_type,
        form_type_id,
        help,
        internal_id,
        is_inactive,
        label,
        last_modified_date,
        length_0,
        parent_id,
        tax_field_schema_extid,
        tax_field_schema_name,
        tax_form_id,
        threshold,
        partition_date

    from source

)

select * from renamed
