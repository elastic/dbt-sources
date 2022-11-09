
with source as (

    select * from {{ source('raw_netsuite', 'sod_monthly_resolved_incidents_assignee_map_history') }}

),

renamed as (

    select
        employee_id,
        sod_monthly_resolved_incide_id

    from source

)

select * from renamed
