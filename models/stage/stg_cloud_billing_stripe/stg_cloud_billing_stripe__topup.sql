
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'topup') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        balance_transaction_id,
        created,
        currency,
        description,
        expected_availability_date,
        failure_code,
        failure_message,
        livemode,
        metadata,
        source_id,
        statement_descriptor,
        status,
        transfer_group

    from source

)

select * from renamed
