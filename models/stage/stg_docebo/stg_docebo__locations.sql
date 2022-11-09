
with source as (

    select * from {{ source('raw_docebo', 'locations') }}

),

renamed as (

    select
        id,
        name,
        address,
        country,
        telephone,
        email,
        directions,
        accomodations,
        other_info,
        images

    from source

)

select * from renamed
