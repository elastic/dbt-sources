
with source as (

    select * from {{ source('raw_docebo', 'courses') }}

),

renamed as (

    select
        id_course,
        name,
        uidcourse,
        date_last_updated,
        description,
        course_type,
        selling,
        code,
        slug_name,
        image,
        language,
        language_label,
        price,
        is_new,
        is_opened,
        duration,
        current_rating,
        credits,
        rating_option,
        max_attempts,
        category,
        img_url,
        available_seats,
        can_rate,
        can_self_unenroll,
        enrollment_policy

    from source

)

select * from renamed
