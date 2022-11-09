
with source as (

    select * from {{ source('raw_stripe', 'transfer') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        amount_reversed,
        balance_transaction_id,
        created,
        currency,
        description,
        destination,
        destination_payment,
        livemode,
        reversed,
        source_transaction,
        source_type,
        transfer_group

    from source

)

select * from renamed
