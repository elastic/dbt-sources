
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_task_dependencies_history') }}

),

renamed as (

    select
        fivetran_index,
        predecessor_task_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        dependency_type,
        lag_days,
        successor_task_id,
        partition_date

    from source

)

select * from renamed
