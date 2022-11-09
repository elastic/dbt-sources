
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'bank_account') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account,
        account_holder_name,
        account_holder_type,
        bank_name,
        connected_account_id,
        country,
        currency,
        customer_id,
        fingerprint,
        is_deleted,
        last_4,
        metadata,
        routing_number,
        status

    from source

)

select * from renamed
