
with source as (

    select * from {{ source('raw_starred', 'elements') }}

),

renamed as (

    select
        form_id,
        rating_id,
        element_id,
        element_title,
        element_type

    from source

)

select * from renamed
