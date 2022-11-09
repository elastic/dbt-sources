
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'invoice_line_item') }}

),

renamed as (

    select
        invoice_id,
        unique_id,
        _fivetran_synced,
        amount,
        currency,
        description,
        discountable,
        id,
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
        type

    from source

)

select * from renamed
