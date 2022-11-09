
with source as (

    select * from {{ source('raw_stripe_swiftype', 'application_fee') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id,
        amount,
        amount_refunded,
        application,
        balance_transaction_id,
        charge_id,
        created,
        currency,
        livemode,
        originating_transaction,
        refunded

    from source

)

select * from renamed
