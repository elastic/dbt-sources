
with source as (

    select * from {{ source('raw_contentstack', 'blog_locale') }}

),

renamed as (

    select
        uid,
        locale

    from source

)

select * from renamed
