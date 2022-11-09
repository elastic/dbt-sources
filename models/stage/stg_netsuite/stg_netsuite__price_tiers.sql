
with source as (

    select * from {{ source('raw_netsuite', 'price_tiers') }}

),

renamed as (

    select
        from_quantity,
        maximum_quantity,
        minimum_quantity,
        price_plan_id,
        price_tier,
        price_tier_id,
        price_value,
        pricing_option

    from source

)

select * from renamed
