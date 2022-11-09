
with source as (

    select * from {{ source('raw_stripe_swiftype', 'transfer_reversal') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        balance_transaction_id,
        created,
        currency,
        destination_payment_refund,
        source_refund_id,
        transfer_id,
        metadata

    from source

)

select * from renamed
