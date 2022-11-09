
with source as (

    select * from {{ source('raw_netsuite', 'tax_field_schema_validation_map') }}

),

renamed as (

    select
        tax_field_schema_id,
        tax_report_map_option_id

    from source

)

select * from renamed
