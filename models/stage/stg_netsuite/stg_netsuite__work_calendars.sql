
with source as (

    select * from {{ source('raw_netsuite', 'work_calendars') }}

),

renamed as (

    select
        isdefault,
        isfriday,
        isinactive,
        ismonday,
        issaturday,
        issunday,
        isthursday,
        istuesday,
        iswednesday,
        message,
        name,
        start_hour,
        work_calendar_id,
        work_hours_per_day

    from source

)

select * from renamed
