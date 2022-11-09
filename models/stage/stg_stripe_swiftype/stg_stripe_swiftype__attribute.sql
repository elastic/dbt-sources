
with source as (

    select * from {{ source('raw_stripe_swiftype', 'attribute') }}

),

renamed as (

    select
        id,
        name,
        _fivetran_synced,
        value

    from source

)

select * from renamed
