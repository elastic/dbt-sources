
with source as (

    select * from {{ source('raw_stripe_swiftype', 'refund') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        balance_transaction_id,
        charge_id,
        created,
        currency,
        description,
        failure_balance_transaction_id,
        failure_reason,
        reason,
        receipt_number,
        status,
        metadata,
        payment_intent_id,
        connected_account_id

    from source

)

select * from renamed
