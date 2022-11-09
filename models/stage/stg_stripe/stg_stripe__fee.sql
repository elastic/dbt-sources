
with source as (

    select * from {{ source('raw_stripe', 'fee') }}

),

renamed as (

    select
        balance_transaction_id,
        index,
        _fivetran_synced,
        amount,
        application,
        connected_account_id,
        currency,
        description,
        type

    from source

)

select * from renamed
