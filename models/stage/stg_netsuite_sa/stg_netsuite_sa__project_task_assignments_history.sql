
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_task_assignments_history') }}

),

renamed as (

    select
        project_id,
        project_task_id,
        resource_id,
        _fivetran_synced,
        allocated_work,
        billing_class_id,
        calculated_work,
        estimated_work,
        item_id,
        planned_work,
        unit_cost,
        unit_cost_foreign,
        unit_price,
        unit_price_foreign,
        units,
        _fivetran_deleted,
        date_deleted,
        fivetran_index,
        partition_date

    from source

)

select * from renamed
