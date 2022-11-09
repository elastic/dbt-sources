
with source as (

    select * from {{ source('raw_stripe_swiftype', 'dispute_balance_transaction') }}

),

renamed as (

    select
        balance_transaction_id,
        dispute_id,
        _fivetran_synced

    from source

)

select * from renamed
