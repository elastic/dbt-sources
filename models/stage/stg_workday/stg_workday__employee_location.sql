
with source as (

    select * from {{ source('raw_workday', 'employee_location') }}

),

renamed as (

    select
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        cost_center,
        cost_center_id,
        first_name,
        last_name,
        location,
        timezone

    from source

)

select * from renamed
