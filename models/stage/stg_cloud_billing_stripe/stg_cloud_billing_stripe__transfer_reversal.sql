
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'transfer_reversal') }}

),

renamed as (

    select
        id,
        transfer_id,
        _fivetran_synced,
        amount,
        balance_transaction_id,
        created,
        currency,
        destination_payment_refund,
        metadata,
        source_refund_id

    from source

)

select * from renamed
