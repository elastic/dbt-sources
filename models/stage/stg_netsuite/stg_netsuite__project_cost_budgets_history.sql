
with source as (

    select * from {{ source('raw_netsuite', 'project_cost_budgets_history') }}

),

renamed as (

    select
        amount,
        is_calculated,
        is_calculated_from_allocations,
        month_end,
        month_start,
        project_cost_category_id,
        project_id

    from source

)

select * from renamed
