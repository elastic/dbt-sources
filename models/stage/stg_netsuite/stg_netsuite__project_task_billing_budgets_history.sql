
with source as (

    select * from {{ source('raw_netsuite', 'project_task_billing_budgets_history') }}

),

renamed as (

    select
        amount,
        is_calculated,
        month_end,
        month_start,
        project_cost_category_id,
        project_id,
        project_task_id

    from source

)

select * from renamed