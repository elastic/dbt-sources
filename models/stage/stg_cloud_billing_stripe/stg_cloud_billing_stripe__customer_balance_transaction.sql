
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'customer_balance_transaction') }}

),

renamed as (

    select
        customer_id,
        id,
        _fivetran_synced,
        amount,
        created,
        credit_note,
        currency,
        description,
        ending_balance,
        invoice_id,
        livemode,
        metadata,
        type

    from source

)

select * from renamed
