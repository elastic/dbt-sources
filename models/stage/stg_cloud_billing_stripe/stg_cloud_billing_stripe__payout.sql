
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'payout') }}

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
        metadata,
        method,
        source_type,
        statement_descriptor,
        status,
        type

    from source

)

select * from renamed
