
with source as (

    select * from {{ source('raw_recurly', 'account_balance_history') }}

),

renamed as (

    select
        account_id,
        account_updated_at,
        currency,
        _fivetran_synced,
        amount,
        past_due

    from source

)

select * from renamed
