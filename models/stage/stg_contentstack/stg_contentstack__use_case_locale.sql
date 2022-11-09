
with source as (

    select * from {{ source('raw_contentstack', 'use_case_locale') }}

),

renamed as (

    select
        uid,
        locale

    from source

)

select * from renamed
