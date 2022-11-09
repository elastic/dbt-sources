
with source as (

    select * from {{ source('raw_netsuite', 'change_log_affected_employee_map') }}

),

renamed as (

    select
        change_log_id,
        employee_id

    from source

)

select * from renamed
