
with source as (

    select * from {{ source('raw_stripe', 'invoice_item') }}

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
        period_end,
        period_start,
        proration,
        quantity,
        subscription_id,
        subscription_item_id,
        unit_amount

    from source

)

select * from renamed
