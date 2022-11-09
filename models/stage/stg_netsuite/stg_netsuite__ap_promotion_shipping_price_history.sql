
with source as (

    select * from {{ source('raw_netsuite', 'ap_promotion_shipping_price_history') }}

),

renamed as (

    select
        amount,
        ap_promotion_shipping_price_ex,
        ap_promotion_shipping_price_id,
        currency_id,
        date_created,
        is_inactive,
        is_percent,
        last_modified_date,
        parent_id,
        promotion_discount_id

    from source

)

select * from renamed
