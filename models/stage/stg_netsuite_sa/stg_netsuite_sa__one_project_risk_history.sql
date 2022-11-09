
with source as (

    select * from {{ source('raw_netsuite_sa', 'one_project_risk_history') }}

),

renamed as (

    select
        one_project_risk_id,
        _fivetran_deleted,
        _fivetran_synced,
        contingency_plan,
        date_created,
        date_deleted,
        impact_id,
        is_inactive,
        last_modified_date,
        one_project_risk_extid,
        parent_id,
        probability_id,
        resolution_date,
        resolution_status_id,
        risk,
        strategy_id,
        partition_date

    from source

)

select * from renamed
