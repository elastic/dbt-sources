
with source as (

    select * from {{ source('raw_netsuite', 'billing_class_rates') }}

),

renamed as (

    select
        billing_class_id,
        billing_rate_card_id,
        currency_id,
        unit_price

    from source

)

select * from renamed
