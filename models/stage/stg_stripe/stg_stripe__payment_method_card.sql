
with source as (

    select * from {{ source('raw_stripe', 'payment_method_card') }}

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
        wallet_type

    from source

)

select * from renamed
