
with source as (

    select * from {{ source('raw_netsuite_sa', 'work_calendars') }}

),

renamed as (

    select
        work_calendar_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
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
        work_hours_per_day

    from source

)

select * from renamed
