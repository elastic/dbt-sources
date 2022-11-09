
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_report_mapper_execution_context_map') }}

),

renamed as (

    select
        tax_report_map_option_id,
        tax_report_mapper_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
