
with source as (

    select * from {{ source('raw_netsuite', 'tax_form_schema_history') }}

),

renamed as (

    select
        date_created,
        description,
        is_inactive,
        last_modified_date,
        parent_id,
        tax_form_internal_id,
        tax_form_schema_extid,
        tax_form_schema_id,
        tax_form_schema_name

    from source

)

select * from renamed
