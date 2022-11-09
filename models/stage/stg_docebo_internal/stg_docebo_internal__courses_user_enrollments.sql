
with source as (

    select * from {{ source('raw_docebo_internal', 'courses_user_enrollments') }}

),

renamed as (

    select
        course_id,
        user_id,
        username,
        email,
        first_name,
        last_name,
        level,
        enrollment_date,
        active_from,
        active_until,
        status,
        status_id,
        level_id,
        user_status_id,
        user_status,
        score_given

    from source

)

select * from renamed
