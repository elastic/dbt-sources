
with source as (

    select * from {{ source('raw_stripe_swiftype', 'subscription_discount') }}

),

renamed as (

    select
        fivetran_id,
        _fivetran_synced,
        coupon_id,
        customer_id,
        end,
        start,
        subscription_id,
        id,
        promotion_code,
        invoice_item_id,
        invoice_id,
        checkout_session

    from source

)

select * from renamed
