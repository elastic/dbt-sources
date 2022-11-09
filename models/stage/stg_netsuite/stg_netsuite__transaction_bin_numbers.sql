
with source as (

    select * from {{ source('raw_netsuite', 'transaction_bin_numbers') }}

),

renamed as (

    select
        bin_number,
        quantity,
        transaction_id,
        transaction_line

    from source

)

select * from renamed
