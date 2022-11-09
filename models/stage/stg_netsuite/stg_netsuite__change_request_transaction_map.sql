
with source as (

    select * from {{ source('raw_netsuite', 'change_request_transaction_map') }}

),

renamed as (

    select
        change_request_id,
        transaction_id

    from source

)

select * from renamed
