
with source as (

    select * from {{ source('raw_netsuite', 'work_calendar_holidays_history') }}

),

renamed as (

    select
        date_holiday,
        description,
        work_calendar_id

    from source

)

select * from renamed