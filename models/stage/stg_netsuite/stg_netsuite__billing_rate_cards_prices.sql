
with source as (

    select * from {{ source('raw_netsuite', 'billing_rate_cards_prices') }}

),

renamed as (

    select
        billing_class_id,
        billing_rate_card_id,
        currency_id,
        sale_unit_id,
        unit_price,
        units_type_id,
        version_0

    from source

)

select * from renamed
