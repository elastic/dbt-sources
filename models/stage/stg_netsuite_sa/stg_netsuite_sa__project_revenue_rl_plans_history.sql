
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_revenue_rl_plans_history') }}

),

renamed as (

    select
        project_revenue_rl_plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_recognized,
        fixed_amount,
        percent_from_total,
        project_revenue_rule_id,
        project_task_id,
        partition_date

    from source

)

select * from renamed
