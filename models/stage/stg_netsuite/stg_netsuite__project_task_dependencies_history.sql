
with source as (

    select * from {{ source('raw_netsuite', 'project_task_dependencies_history') }}

),

renamed as (

    select
        dependency_type,
        lag_days,
        predecessor_task_id,
        successor_task_id

    from source

)

select * from renamed
