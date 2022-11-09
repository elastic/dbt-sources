
with source as (

    select * from {{ source('raw_netsuite', 'timesheet') }}

),

renamed as (

    select
        date_last_modified,
        employee_id,
        end_date,
        start_date,
        status_code,
        timesheet_id

    from source

)

select * from renamed
