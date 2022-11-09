
with source as (

    select * from {{ source('raw_stripe_swiftype', 'fpx') }}

),

renamed as (

    select
        payment_method_id,
        _fivetran_synced,
        bank

    from source

)

select * from renamed
