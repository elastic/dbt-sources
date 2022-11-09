
with source as (

    select * from {{ source('raw_netsuite', 'tax_field_schema_history') }}

),

renamed as (

    select
        alternate_code,
        date_created,
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
        tax_field_schema_id,
        tax_field_schema_name,
        tax_form_id,
        threshold

    from source

)

select * from renamed
