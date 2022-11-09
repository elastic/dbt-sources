
with source as (

    select * from {{ source('raw_docebo_internal', 'learningplans_courses_enrollments') }}

),

renamed as (

    select
        user_id,
        username,
        course_id,
        course_uid,
        course_code,
        course_name,
        course_type,
        course_begin_date,
        course_end_date,
        enrollment_level,
        enrollment_status,
        enrollment_created_by,
        enrollment_created_at,
        enrollment_validity_begin_date,
        enrollment_validity_end_date,
        enrollment_date_last_updated,
        enrollment_completion_date,
        enrollment_score

    from source

)

select * from renamed
