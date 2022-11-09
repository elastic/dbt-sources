
with source as (

    select * from {{ source('raw_strigo', 'event') }}

),

renamed as (

    select
        id,
        owner,
        name,
        event_link,
        token,
        class_id,
        availability,
        description,
        date_start,
        date_end,
        include_chat,
        include_video,
        tas,
        trainees,
        status,
        partner_id,
        created_at,
        use_new_terminal,
        use_multi_participants_video

    from source

)

select * from renamed
