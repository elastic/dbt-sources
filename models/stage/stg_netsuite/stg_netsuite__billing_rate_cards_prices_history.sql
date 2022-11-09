
with source as (

    select * from {{ source('raw_netsuite', 'billing_rate_cards_prices_history') }}

),

renamed as (

    select
        billing_class_id,
        billing_rate_card_id,
        currency_id,
        sale_unit_id,
        units_type_id,
        unit_price,
        version_0

    from source

)

select * from renamed
