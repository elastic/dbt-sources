
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'refund') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        balance_transaction_id,
        charge_id,
        connected_account_id,
        created,
        currency,
        description,
        failure_balance_transaction_id,
        failure_reason,
        metadata,
        payment_intent_id,
        reason,
        receipt_number,
        status

    from source

)

select * from renamed
