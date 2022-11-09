
with source as (

    select * from {{ source('raw_stripe_swiftype', 'payout') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        arrival_date,
        automatic,
        balance_transaction_id,
        connected_account_id,
        created,
        currency,
        description,
        destination_bank_account_id,
        destination_card_id,
        failure_balance_transaction_id,
        failure_code,
        failure_message,
        livemode,
        method,
        source_type,
        statement_descriptor,
        status,
        type,
        metadata

    from source

)

select * from renamed
