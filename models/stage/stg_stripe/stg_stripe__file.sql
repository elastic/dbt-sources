
with source as (

    select * from {{ source('raw_stripe', 'file') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created,
        filename,
        purpose,
        size,
        title,
        type,
        url

    from source

)

select * from renamed