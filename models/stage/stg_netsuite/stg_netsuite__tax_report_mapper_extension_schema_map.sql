
with source as (

    select * from {{ source('raw_netsuite', 'tax_report_mapper_extension_schema_map') }}

),

renamed as (

    select
        tax_form_schema_id,
        tax_report_mapper_id

    from source

)

select * from renamed
