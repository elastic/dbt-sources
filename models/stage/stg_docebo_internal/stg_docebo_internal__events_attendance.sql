
with source as (

    select * from {{ source('raw_docebo_internal', 'events_attendance') }}

),

renamed as (

    select
        id_events,
        user_id,
        username,
        email,
        first_name,
        last_name,
        status_id,
        status,
        time,
        duration

    from source

)

select * from renamed
