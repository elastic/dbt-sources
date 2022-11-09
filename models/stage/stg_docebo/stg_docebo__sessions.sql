
with source as (

    select * from {{ source('raw_docebo', 'sessions') }}

),

renamed as (

    select
        id_course,
        id_session,
        name,
        uid_session,
        description,
        start_date,
        end_date,
        last_subscription_date,
        max_enroll,
        min_enroll,
        count_instructor,
        count_instructor_waitlist,
        count_tutor,
        count_tutor_waitlist,
        count_learner,
        count_learner_waitlist,
        is_enrolled,
        count_enrolled,
        can_enroll_session,
        instructors,
        dates,
        id_location,
        id_country,
        additional_fields,
        slug_name

    from source

)

select * from renamed
