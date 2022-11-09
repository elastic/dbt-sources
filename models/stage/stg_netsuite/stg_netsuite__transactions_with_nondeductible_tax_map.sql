
with source as (

    select * from {{ source('raw_netsuite', 'transactions_with_nondeductible_tax_map') }}

),

renamed as (

    select
        transaction2_id,
        transaction_id

    from source

)

select * from renamed
