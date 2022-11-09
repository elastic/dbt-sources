
with source as (

    select * from {{ source('raw_stripe_swiftype', 'payment_method_card') }}

),

renamed as (

    select
        payment_method_id,
        _fivetran_synced,
        brand,
        charge_id,
        description,
        fingerprint,
        funding,
        type,
        wallet_type,
        three_d_secure_usage_supported,
        three_d_secure_version,
        three_d_secure_authentication_flow,
        three_d_secure_result,
        three_d_secure_result_reason

    from source

)

select * from renamed
