
with source as (

    select * from {{ source('raw_stripe_swiftype', 'tax_rate') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        created,
        description,
        display_name,
        inclusive,
        jurisdiction,
        livemode,
        percentage,
        metadata

    from source

)

select * from renamed
