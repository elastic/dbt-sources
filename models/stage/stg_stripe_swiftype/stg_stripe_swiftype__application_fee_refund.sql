
with source as (

    select * from {{ source('raw_stripe_swiftype', 'application_fee_refund') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        application_fee_id,
        balance_transaction_id,
        created,
        currency,
        metadata

    from source

)

select * from renamed
