
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'application_fee_refund') }}

),

renamed as (

    select
        application_fee_id,
        id,
        _fivetran_synced,
        amount,
        balance_transaction_id,
        created,
        currency,
        metadata

    from source

)

select * from renamed
