
with source as (

    select * from {{ source('raw_salesforce', 'pse_expense_approval_ui_c') }}

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
        pse_number_of_expenses_shown_per_page_c,
        pse_show_assignment_name_c,
        pse_show_billable_field_c,
        pse_show_first_expense_date_c,
        pse_show_last_expense_date_c,
        pse_show_milestone_name_c,
        pse_show_number_of_expense_lines_c,
        pse_show_project_name_c,
        pse_show_resource_name_c,
        pse_show_total_billable_amount_c,
        pse_show_total_non_billable_amount_c,
        pse_tooltip_fields_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
