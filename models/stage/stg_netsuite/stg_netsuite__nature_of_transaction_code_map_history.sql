
with source as (

    select * from {{ source('raw_netsuite', 'nature_of_transaction_code_map_history') }}

),

renamed as (

    select
        nature_of_transaction_codes_id,
        nature_of_transaction_id

    from source

)

select * from renamed
