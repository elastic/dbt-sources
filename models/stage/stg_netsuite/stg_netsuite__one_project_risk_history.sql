
with source as (

    select * from {{ source('raw_netsuite', 'one_project_risk_history') }}

),

renamed as (

    select
        contingency_plan,
        date_created,
        impact_id,
        is_inactive,
        last_modified_date,
        one_project_risk_extid,
        one_project_risk_id,
        parent_id,
        probability_id,
        resolution_date,
        resolution_status_id,
        risk,
        strategy_id

    from source

)

select * from renamed
