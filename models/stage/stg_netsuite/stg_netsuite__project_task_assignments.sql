
with source as (

    select * from {{ source('raw_netsuite', 'project_task_assignments') }}

),

renamed as (

    select
        allocated_work,
        billing_class_id,
        calculated_work,
        estimated_work,
        item_id,
        planned_work,
        project_id,
        project_task_id,
        resource_id,
        units,
        unit_cost,
        unit_cost_foreign,
        unit_price,
        unit_price_foreign

    from source

)

select * from renamed
