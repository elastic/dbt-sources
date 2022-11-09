
with source as (

    select * from {{ source('raw_netsuite', 'project_revenue_rl_plans') }}

),

renamed as (

    select
        date_recognized,
        fixed_amount,
        percent_from_total,
        project_revenue_rl_plan_id,
        project_revenue_rule_id,
        project_task_id

    from source

)

select * from renamed
