
with source as (

    select * from {{ source('raw_stripe', 'customer_balance_transaction') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        created,
        credit_note,
        currency,
        customer_id,
        description,
        ending_balance,
        invoice_id,
        livemode,
        type

    from source

)

select * from renamed
