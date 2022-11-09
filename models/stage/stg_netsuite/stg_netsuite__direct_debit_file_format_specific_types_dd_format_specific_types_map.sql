
with source as (

    select * from {{ source('raw_netsuite', 'direct_debit_file_format_specific_types_dd_format_specific_types_map') }}

),

renamed as (

    select
        direct_debit_file_format_sp_id,
        direct_debit_type_id

    from source

)

select * from renamed
