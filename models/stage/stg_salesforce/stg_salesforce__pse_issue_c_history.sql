
with source as (

    select * from {{ source('raw_salesforce', 'pse_issue_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_account_c,
        pse_action_plan_c,
        pse_closed_c,
        pse_closed_date_c,
        pse_comments_c,
        pse_date_raised_c,
        pse_impact_c,
        pse_issue_description_c,
        pse_issue_name_c,
        pse_issue_owner_c,
        pse_milestone_c,
        pse_opportunity_c,
        pse_priority_c,
        pse_project_c,
        pse_project_task_c,
        pse_risk_c,
        pse_severity_c,
        pse_status_c,
        system_modstamp

    from source

)

select * from renamed
