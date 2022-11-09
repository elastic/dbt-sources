
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'invoice_item') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        currency,
        customer_id,
        date,
        description,
        discountable,
        invoice_id,
        is_deleted,
        livemode,
        metadata,
        period_end,
        period_start,
        plan_id,
        price_id,
        proration,
        quantity,
        subscription_id,
        subscription_item_id,
        unit_amount

    from source

)

select * from renamed
