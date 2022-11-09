
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'payment_method_card') }}

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
        three_d_secure_authentication_flow,
        three_d_secure_result,
        three_d_secure_result_reason,
        three_d_secure_version,
        type,
        wallet_type

    from source

)

select * from renamed
