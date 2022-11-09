
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_report_mapper_extension_schema_map') }}

),

renamed as (

    select
        tax_form_schema_id,
        tax_report_mapper_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
