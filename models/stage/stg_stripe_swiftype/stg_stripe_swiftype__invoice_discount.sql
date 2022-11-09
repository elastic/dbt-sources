
with source as (

    select * from {{ source('raw_stripe_swiftype', 'invoice_discount') }}

),

renamed as (

    select
        fivetran_id,
        _fivetran_synced,
        coupon_id,
        customer_id,
        end,
        invoice_id,
        start,
        subscription_id,
        promotion_code,
        invoice_item_id,
        checkout_session,
        id

    from source

)

select * from renamed
