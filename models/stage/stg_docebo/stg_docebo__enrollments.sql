
with source as (

    select * from {{ source('raw_docebo', 'enrollments') }}

),

renamed as (

    select
        id_course,
        user_id,
        date_last_updated,
        subscribed_by,
        username,
        name,
        description,
        type,
        status,
        location_name,
        webinar_tool,
        session_date_begin,
        session_time_begin,
        session_timezone,
        lang_code,
        code,
        course_begin_date,
        enroll_date_of_enrollment,
        enroll_begin_date,
        course_end_date,
        enroll_end_date,
        course_complete_date,
        score,
        enrollment_fields,
        waiting,
        url,
        rating_option,
        rating,
        can_enter,
        duration,
        complete_percent,
        level,
        courses_count,
        soft_deadline,
        hidden,
        slug,
        is_new,
        image_url,
        total_time,
        subscription_subscribed,
        subscription_is_active,
        actions,
        outdated_already_marked,
        outdated_total_users,
        id_session,
        enrolled_sessions_status,
        googlebq_date_updated

    from source

)

select * from renamed
