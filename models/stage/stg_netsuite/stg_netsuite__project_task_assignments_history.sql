
with source as (

    select * from {{ source('raw_netsuite', 'project_task_assignments_history') }}

),

renamed as (

    select
        allocated_work,
        billing_class_id,
        estimated_work,
        item_id,
        project_id,
        project_task_id,
        resource_id,
        units,
        unit_cost,
        unit_cost_foreign,
        unit_price,
        unit_price_foreign,
        calculated_work,
        planned_work

    from source

)

select * from renamed
