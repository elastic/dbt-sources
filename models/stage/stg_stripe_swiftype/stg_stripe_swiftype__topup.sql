
with source as (

    select * from {{ source('raw_stripe_swiftype', 'topup') }}

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
        source_id,
        statement_descriptor,
        status,
        transfer_group,
        metadata

    from source

)

select * from renamed
