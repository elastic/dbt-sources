
with source as (

    select * from {{ source('raw_stripe', 'refund') }}

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
        status

    from source

)

select * from renamed
