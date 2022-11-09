
with source as (

    select * from {{ source('raw_stripe_swiftype', 'promotion_code') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        code,
        coupon_id,
        created,
        customer_id,
        expires_at,
        first_time_transaction,
        livemode,
        max_redemptions,
        metadata,
        minimum_amount,
        minimum_amount_currency,
        times_redeemed

    from source

)

select * from renamed
