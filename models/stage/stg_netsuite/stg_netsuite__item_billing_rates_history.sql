
with source as (

    select * from {{ source('raw_netsuite', 'item_billing_rates_history') }}

),

renamed as (

    select
        billing_class_id,
        currency_id,
        date_last_modified,
        discount_pct,
        isinactive,
        isonline,
        item_id,
        item_price_extid,
        item_price_id,
        item_unit_price,
        name

    from source

)

select * from renamed
