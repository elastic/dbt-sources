
with source as (

    select * from {{ source('raw_netsuite', 'tax_report_mapper_execution_context_map_history') }}

),

renamed as (

    select
        tax_report_mapper_id,
        tax_report_map_option_id

    from source

)

select * from renamed
