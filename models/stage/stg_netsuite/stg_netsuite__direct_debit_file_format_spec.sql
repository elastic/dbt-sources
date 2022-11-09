
with source as (

    select * from {{ source('raw_netsuite', 'direct_debit_file_format_spec') }}

),

renamed as (

    select
        date_created,
        direct_debit_file_format_sp_ex,
        direct_debit_file_format_sp_id,
        direct_debit_format_id,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
