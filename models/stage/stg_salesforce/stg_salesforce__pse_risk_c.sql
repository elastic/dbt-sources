
with source as (

    select * from {{ source('raw_salesforce', 'pse_risk_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_account_c,
        pse_closed_c,
        pse_closed_date_c,
        pse_comments_c,
        pse_contingency_c,
        pse_date_raised_c,
        pse_impact_c,
        pse_issue_c,
        pse_likelihood_c,
        pse_milestone_c,
        pse_mitigation_plan_c,
        pse_opportunity_c,
        pse_project_c,
        pse_project_task_c,
        pse_risk_description_c,
        pse_risk_name_c,
        pse_risk_owner_c,
        pse_severity_c,
        pse_status_c,
        system_modstamp

    from source

)

select * from renamed
