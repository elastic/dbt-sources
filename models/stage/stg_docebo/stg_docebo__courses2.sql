
with source as (

    select * from {{ source('raw_docebo', 'courses2') }}

),

renamed as (

    select
        id_course,
        name,
        code,
        uidcourse,
        slug_name,
        description,
        credits,
        lang_code,
        lang_label,
        type,
        is_published,
        status,
        status_identifier,
        certificate_url,
        instructors,
        rating_option,
        current_rating,
        is_rated,
        has_autoplay,
        course_date_start,
        course_date_end,
        enrollment_date_start,
        enrollment_date_end,
        last_completed_object,
        chapter_sequence,
        tree,
        duration,
        price,
        background_image,
        flat_los,
        additional_fields,
        sessions,
        enter_status,
        can_self_unenroll,
        can_self_enroll,
        can_session_change,
        can_session_self_unenroll,
        deeplink,
        demo_file_type,
        level,
        shopify_product_meaningful_id,
        learningplans,
        on_sale,
        has_overview,
        show_toc,
        show_lightbox_nav,
        social_settings,
        final_score,
        available_seats,
        allow_overbooking,
        can_enter,
        can_rate,
        html_page_css,
        enrolled,
        can_manage_course,
        in_soft_deadline,
        waiting_list,
        category,
        enrollment_policy,
        max_attempts,
        course_thumbnail,
        max_attempts_reached

    from source

)

select * from renamed
