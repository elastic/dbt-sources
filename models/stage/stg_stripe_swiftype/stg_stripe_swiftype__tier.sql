
with source as (

    select * from {{ source('raw_stripe_swiftype', 'tier') }}

),

renamed as (

    select
        id,
        index,
        _fivetran_synced,
        flat_amount,
        unit_amount,
        up_to

    from source

)

select * from renamed
