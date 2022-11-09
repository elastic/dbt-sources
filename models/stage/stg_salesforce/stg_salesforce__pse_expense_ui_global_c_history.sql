
with source as (

    select * from {{ source('raw_salesforce', 'pse_expense_ui_global_c_history') }}

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
        pse_allow_delegated_expense_report_entry_c,
        pse_allow_mixed_billable_non_billable_er_c,
        pse_always_use_project_expense_limit_amount_c,
        pse_expense_line_updates_synchronous_only_c,
        pse_expense_only_users_set_submitted_on_save_c,
        pse_max_synchronous_expense_lines_c,
        pse_number_of_top_assignments_c,
        pse_number_of_top_projects_c,
        pse_records_per_page_count_c,
        pse_resource_load_limit_c,
        pse_set_default_to_assignment_milestone_c,
        pse_set_owner_to_resource_salesforce_user_c,
        pse_show_default_incurred_non_billable_tax_c,
        pse_show_expense_billable_amount_c,
        pse_show_expense_billable_field_c,
        pse_show_expense_milestone_c,
        pse_show_expense_non_billable_incurred_amount_c,
        pse_show_incurred_non_billable_tax_c,
        pse_show_non_reimbursable_amount_c,
        pse_submitted_c,
        pse_use_highest_expense_limit_amount_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
