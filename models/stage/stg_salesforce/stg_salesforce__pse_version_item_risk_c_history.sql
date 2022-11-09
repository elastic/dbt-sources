
with source as (

    select * from {{ source('raw_salesforce', 'pse_version_item_risk_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        name,
        pse_account_id_c,
        pse_account_name_c,
        pse_closed_c,
        pse_closed_date_c,
        pse_comments_c,
        pse_contingency_c,
        pse_date_raised_c,
        pse_impact_c,
        pse_issue_id_c,
        pse_issue_name_c,
        pse_likelihood_c,
        pse_milestone_id_c,
        pse_milestone_name_c,
        pse_mitigation_plan_c,
        pse_opportunity_id_c,
        pse_opportunity_name_c,
        pse_original_id_c,
        pse_project_task_id_c,
        pse_project_task_name_c,
        pse_risk_description_c,
        pse_risk_name_c,
        pse_risk_number_c,
        pse_risk_owner_id_c,
        pse_risk_owner_name_c,
        pse_severity_c,
        pse_status_c,
        pse_version_c,
        system_modstamp

    from source

)

select * from renamed
