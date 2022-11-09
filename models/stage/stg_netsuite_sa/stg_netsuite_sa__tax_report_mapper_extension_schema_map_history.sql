
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_report_mapper_extension_schema_map_history') }}

),

renamed as (

    select
        tax_form_schema_id,
        tax_report_mapper_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
