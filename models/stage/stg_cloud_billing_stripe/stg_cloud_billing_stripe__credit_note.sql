
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'credit_note') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        created,
        currency,
        customer_balance_transaction_id,
        discount_amount,
        invoice_id,
        livemode,
        memo,
        metadata,
        number,
        pdf,
        reason,
        refund_id,
        status,
        subtotal,
        total,
        type,
        voided_at

    from source

)

select * from renamed
