
with source as (

    select * from {{ source('raw_salesforce', 'pse_create_project_personal_c') }}

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
        name,
        pse_opp_and_template_proj_budget_fieldset_c,
        pse_opp_and_template_proj_fieldset_c,
        pse_opp_rr_fieldset_c,
        pse_template_proj_alt_copy_assign_fieldset_c,
        pse_template_proj_alt_copy_location_fieldset_c,
        pse_template_proj_alt_copy_meth_fieldset_c,
        pse_template_proj_alt_copy_ms_fieldset_c,
        pse_template_proj_alt_copy_phase_fieldset_c,
        pse_template_proj_alt_copy_project_fieldset_c,
        pse_template_proj_alt_copy_rr_fieldset_c,
        pse_template_proj_alt_copy_task_fieldset_c,
        pse_template_proj_assignment_fieldset_c,
        pse_template_proj_copy_pta_fieldset_c,
        pse_template_proj_location_fieldset_c,
        pse_template_proj_meth_fieldset_c,
        pse_template_proj_ms_fieldset_c,
        pse_template_proj_phase_fieldset_c,
        pse_template_proj_rr_fieldset_c,
        pse_template_proj_task_fieldset_c,
        setup_owner_id,
        system_modstamp,
        pse_opp_proj_milestone_fieldset_c,
        pse_template_proj_alt_copy_risk_fieldset_c,
        pse_template_proj_risk_fieldset_c,
        pse_opp_product_milestone_fieldset_c,
        pse_resource_skill_request_fieldset_c,
        pse_template_proj_columns_ms_fieldset_c,
        pse_template_proj_columns_rr_fieldset_c

    from source

)

select * from renamed
