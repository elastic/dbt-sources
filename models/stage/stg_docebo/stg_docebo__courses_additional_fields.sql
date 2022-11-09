
with source as (

    select * from {{ source('raw_docebo', 'courses_additional_fields') }}

),

renamed as (

    select
        id_course,
        id,
        title,
        type,
        visible_to_user,
        settings,
        value

    from source

)

select * from renamed
