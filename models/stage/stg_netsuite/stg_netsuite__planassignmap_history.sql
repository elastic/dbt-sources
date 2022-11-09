
with source as (

    select * from {{ source('raw_netsuite', 'planassignmap_history') }}

),

renamed as (

    select
        date_created,
        employee_id,
        end_date,
        plan_id,
        start_date

    from source

)

select * from renamed
