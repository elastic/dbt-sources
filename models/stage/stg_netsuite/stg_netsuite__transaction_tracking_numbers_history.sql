
with source as (

    select * from {{ source('raw_netsuite', 'transaction_tracking_numbers_history') }}

),

renamed as (

    select
        tracking_number,
        transaction_id

    from source

)

select * from renamed
