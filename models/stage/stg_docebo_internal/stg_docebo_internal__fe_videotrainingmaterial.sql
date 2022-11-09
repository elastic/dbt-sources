
with source as (

    select * from {{ source('raw_docebo_internal', 'fe_videotrainingmaterial') }}

),

renamed as (

    select

    from source

)

select * from renamed
