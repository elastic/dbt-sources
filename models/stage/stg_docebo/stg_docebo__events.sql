
with source as (

    select * from {{ source('raw_docebo', 'events') }}

),

renamed as (

    select
        id_course,
        id_session,
        id_event,
        instructors,
        name,
        day,
        description,
        time_begin,
        time_end,
        break_begin,
        break_end,
        timezone,
        id_classroom,
        id_location,
        effective_duration,
        collaboration_tool,
        cover_image,
        webinar_tool,
        webinar_tool_sync_failed,
        id_tool_account,
        name_tool_account,
        password,
        custom_url,
        allow_completion_percentage,
        required_completion_percentage,
        allow_recording_completion,
        allow_join_completion,
        join_in_advance_time_user,
        join_in_advance_time_teacher,
        lastedit

    from source

)

select * from renamed
