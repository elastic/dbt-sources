
with source as (

    select * from {{ source('raw_starred', 'properties') }}

),

renamed as (

    select
        form_id,
        rating_id,
        label,
        value

    from source

)

select * from renamed
