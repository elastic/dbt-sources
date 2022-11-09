
with source as (

    select * from {{ source('raw_docebo', 'session_instructors') }}

),

renamed as (

    select
        id_course,
        id_session,
        firstname,
        lastname,
        username

    from source

)

select * from renamed
