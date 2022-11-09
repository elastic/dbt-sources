
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'coupon') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount_off,
        created,
        currency,
        duration,
        duration_in_months,
        is_deleted,
        livemode,
        max_redemptions,
        metadata,
        name,
        percent_off,
        redeem_by,
        times_redeemed,
        valid

    from source

)

select * from renamed
