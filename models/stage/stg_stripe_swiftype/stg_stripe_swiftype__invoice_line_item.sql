
with source as (

    select * from {{ source('raw_stripe_swiftype', 'invoice_line_item') }}

),

renamed as (

    select
        id,
        invoice_id,
        _fivetran_synced,
        amount,
        currency,
        description,
        discountable,
        livemode,
        period_end,
        period_start,
        plan_id,
        proration,
        quantity,
        subscription_id,
        subscription_item_id,
        type,
        unique_id,
        metadata,
        price_id,
        invoice_item_id

    from source

)

select * from renamed
