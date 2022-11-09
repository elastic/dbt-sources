
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'customer_discount') }}

),

renamed as (

    select
        customer_id,
        id,
        _fivetran_synced,
        checkout_session,
        coupon_id,
        end,
        invoice_id,
        invoice_item_id,
        promotion_code,
        start,
        subscription_id

    from source

)

select * from renamed
