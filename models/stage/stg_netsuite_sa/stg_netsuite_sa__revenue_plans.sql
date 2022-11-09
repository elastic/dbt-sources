
with source as (

    select * from {{ source('raw_netsuite_sa', 'revenue_plans') }}

),

renamed as (

    select
        plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_period_id,
        comments,
        created_from,
        creation_triggered_by,
        date_created,
        date_deleted,
        date_last_modified,
        end_date,
        is_hold_rev_rec,
        plan_number,
        reforecast_method,
        rev_rec_rule_id,
        revenue_element_id,
        revenue_plan_status,
        revenue_plan_type,
        start_date

    from source

)

select * from renamed
