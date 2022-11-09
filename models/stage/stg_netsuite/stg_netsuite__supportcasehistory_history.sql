
with source as (

    select * from {{ source('raw_netsuite', 'supportcasehistory_history') }}

),

renamed as (

    select
        case_id,
        date_closed,
        date_created,
        employee_id

    from source

)

select * from renamed
