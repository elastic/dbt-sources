
with source as (

    select * from {{ source('raw_docebo', 'sessions_additional_fields') }}

),

renamed as (

    select
        id_course,
        id_session,
        id,
        title,
        type,
        visible_to_user,
        settings,
        value

    from source

)

select * from renamed
