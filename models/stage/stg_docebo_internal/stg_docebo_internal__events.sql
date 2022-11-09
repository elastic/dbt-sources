
with source as (

    select * from {{ source('raw_docebo_internal', 'events') }}

),

renamed as (

    select
        id_session,
        id_events,
        name,
        date,
        time,
        duration,
        attendance,
        type,
        enrolled

    from source

)

select * from renamed
