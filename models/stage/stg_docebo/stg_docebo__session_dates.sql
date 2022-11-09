
with source as (

    select * from {{ source('raw_docebo', 'session_dates') }}

),

renamed as (

    select
        id_course,
        id_session,
        date,
        name,
        start_hour,
        end_hour,
        id_location,
        id_classroom,
        classroom_name,
        timezone,
        effective_duration,
        gmt

    from source

)

select * from renamed
