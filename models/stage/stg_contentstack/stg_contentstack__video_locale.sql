
with source as (

    select * from {{ source('raw_contentstack', 'video_locale') }}

),

renamed as (

    select
        uid,
        locale

    from source

)

select * from renamed
