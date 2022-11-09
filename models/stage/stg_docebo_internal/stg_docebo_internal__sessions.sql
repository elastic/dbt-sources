
with source as (

    select * from {{ source('raw_docebo_internal', 'sessions') }}

),

renamed as (

    select
        id_course,
        id_session,
        name,
        uid_session,
        max_enroll,
        min_enroll,
        instructors_id,
        instructors_username

    from source

)

select * from renamed
