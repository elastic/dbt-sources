
with source as (

    select * from {{ source('raw_stripe_swiftype', 'transaction') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        authorization_id,
        balance_transaction_id,
        card_id,
        cardholder,
        created,
        currency,
        dispute_id,
        livemode,
        type,
        metadata,
        amount_details_atm_fee

    from source

)

select * from renamed
