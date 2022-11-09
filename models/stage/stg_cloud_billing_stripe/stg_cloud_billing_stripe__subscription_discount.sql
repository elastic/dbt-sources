
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'subscription_discount') }}

),

renamed as (

    select
        id,
        subscription_id,
        _fivetran_synced,
        checkout_session,
        coupon_id,
        customer_id,
        end,
        invoice_id,
        invoice_item_id,
        promotion_code,
        start

    from source

)

select * from renamed
