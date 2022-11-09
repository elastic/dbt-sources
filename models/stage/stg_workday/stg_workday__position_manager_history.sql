
with source as (

    select * from {{ source('raw_workday', 'position_manager_history') }}

),

renamed as (

    select
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        former_manager,
        former_position,
        job_manager_change_effective_date,
        new_manager,
        new_position,
        worker,
        worker_status

    from source

)

select * from renamed
