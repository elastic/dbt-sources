
with source as (

    select * from {{ source('raw_stripe', 'setup_intent') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        application,
        cancellation_reason,
        client_secret,
        created,
        customer_id,
        description,
        livemode,
        mandate,
        on_behalf_of,
        payment_method_id,
        single_use_mandate,
        status,
        usage

    from source

)

select * from renamed
