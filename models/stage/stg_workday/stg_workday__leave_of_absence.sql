
with source as (

    select * from {{ source('raw_workday', 'leave_of_absence') }}

),

renamed as (

    select
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        leave_of_absence_requests_group,
        name,
        work_country

    from source

)

select * from renamed
