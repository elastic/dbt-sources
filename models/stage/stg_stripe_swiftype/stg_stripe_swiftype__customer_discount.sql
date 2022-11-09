
with source as (

    select * from {{ source('raw_stripe_swiftype', 'customer_discount') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        checkout_session,
        coupon_id,
        customer_id,
        end,
        invoice_id,
        invoice_item_id,
        promotion_code,
        start,
        subscription_id

    from source

)

select * from renamed
