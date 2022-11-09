
with source as (

    select * from {{ source('raw_netsuite', 'revenue_plans') }}

),

renamed as (

    select
        accounting_period_id,
        comments,
        created_from,
        creation_triggered_by,
        date_created,
        date_last_modified,
        end_date,
        is_hold_rev_rec,
        plan_id,
        plan_number,
        reforecast_method,
        revenue_element_id,
        revenue_plan_status,
        revenue_plan_type,
        rev_rec_rule_id,
        start_date

    from source

)

select * from renamed
