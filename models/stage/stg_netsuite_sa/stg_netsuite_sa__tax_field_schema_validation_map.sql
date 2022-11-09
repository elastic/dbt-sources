
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_field_schema_validation_map') }}

),

renamed as (

    select
        tax_field_schema_id,
        tax_report_map_option_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
