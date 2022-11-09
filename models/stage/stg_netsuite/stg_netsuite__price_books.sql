
with source as (

    select * from {{ source('raw_netsuite', 'price_books') }}

),

renamed as (

    select
        currency,
        name,
        plan_id,
        price_book_extid,
        price_book_id

    from source

)

select * from renamed
