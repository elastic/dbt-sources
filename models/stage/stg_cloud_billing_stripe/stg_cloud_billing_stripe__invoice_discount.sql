
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'invoice_discount') }}

),

renamed as (

    select
        id,
        invoice_id,
        _fivetran_synced,
        checkout_session,
        coupon_id,
        customer_id,
        end,
        invoice_item_id,
        promotion_code,
        start,
        subscription_id

    from source

)

select * from renamed
