
with source as (

    select * from {{ source('raw_netsuite', 'customer_item_pricing_history') }}

),

renamed as (

    select
        currency_id,
        customer_id,
        item_id,
        item_unit_price,
        price_type_id

    from source

)

select * from renamed
