
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'balance_transaction') }}

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
        reporting_category,
        source,
        status,
        type

    from source

)

select * from renamed
