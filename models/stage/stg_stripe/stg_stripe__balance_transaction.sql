
with source as (

    select * from {{ source('raw_stripe', 'balance_transaction') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        available_on,
        connected_account_id,
        created,
        currency,
        description,
        exchange_rate,
        fee,
        net,
        payout_id,
        source,
        status,
        type

    from source

)

select * from renamed
