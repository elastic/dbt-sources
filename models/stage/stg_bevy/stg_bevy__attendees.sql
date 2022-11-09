
with source as (

    select * from {{ source('raw_bevy', 'attendees') }}

),

renamed as (

    select
        id,
        first_name,
        last_name,
        email,
        user_id,
        created_date,
        is_checked_in,
        event_id

    from source

)

select * from renamed
