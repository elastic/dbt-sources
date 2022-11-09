
with source as (

    select * from {{ source('raw_salesforce', 'pse_create_project_global_c') }}

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
        pse_always_copy_resource_requests_from_opp_c,
        pse_budget_amount_required_c,
        pse_budget_def_use_services_attach_from_prod_c,
        pse_budget_def_using_existing_expense_amount_c,
        pse_budget_effective_date_required_c,
        pse_budget_name_required_c,
        pse_budget_name_suffix_c,
        pse_budget_prebilled_amount_required_c,
        pse_budget_status_required_c,
        pse_budget_type_picklist_values_c,
        pse_create_budget_frm_selected_spli_c,
        pse_default_budget_name_c,
        pse_default_budget_status_c,
        pse_default_budget_type_c,
        pse_default_is_active_c,
        pse_default_is_billable_c,
        pse_default_project_name_c,
        pse_default_project_owner_c,
        pse_default_time_credited_c,
        pse_default_time_excluded_c,
        pse_end_date_required_c,
        pse_group_required_c,
        pse_milestone_fields_to_display_c,
        pse_opportunity_owner_required_c,
        pse_owner_id_required_c,
        pse_practice_required_c,
        pse_project_manager_required_c,
        pse_project_name_required_c,
        pse_project_name_suffix_c,
        pse_region_required_c,
        pse_show_account_name_c,
        pse_show_budget_amount_c,
        pse_show_budget_effective_date_c,
        pse_show_budget_name_c,
        pse_show_budget_prebilled_amount_c,
        pse_show_budget_status_c,
        pse_show_budget_type_c,
        pse_show_end_date_c,
        pse_show_group_c,
        pse_show_is_active_c,
        pse_show_is_billable_c,
        pse_show_opportunity_c,
        pse_show_opportunity_owner_c,
        pse_show_owner_id_c,
        pse_show_practice_c,
        pse_show_project_manager_c,
        pse_show_project_name_c,
        pse_show_region_c,
        pse_show_resource_requests_c,
        pse_show_start_date_c,
        pse_show_time_credited_c,
        pse_show_time_excluded_c,
        pse_start_date_required_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
