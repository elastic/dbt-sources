
with source as (

    select * from {{ source('raw_docebo_internal', 'asset_details') }}

),

renamed as (

    select
        asset_id,
        title,
        duration,
        duration_unit,
        rectangular_thumbnail,
        square_thumbnail,
        cover_thumbnail,
        original_thumbnail

    from source

)

select * from renamed
