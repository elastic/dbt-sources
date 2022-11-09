
with source as (

    select * from {{ source('raw_salesforce', 'pse_version_item_milestone_c_history') }}

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
        pse_actual_date_c,
        pse_approved_c,
        pse_approved_for_billing_c,
        pse_bill_date_c,
        pse_billed_c,
        pse_include_in_financials_c,
        pse_invoice_date_c,
        pse_log_milestone_cost_as_external_c,
        pse_milestone_amount_c,
        pse_milestone_cost_c,
        pse_milestone_name_c,
        pse_original_created_by_id_c,
        pse_original_created_by_name_c,
        pse_original_created_date_c,
        pse_original_id_c,
        pse_original_last_modified_by_id_c,
        pse_original_last_modified_by_name_c,
        pse_original_last_modified_date_c,
        pse_original_owner_id_c,
        pse_original_owner_name_c,
        pse_planned_hours_c,
        pse_project_task_hours_c,
        pse_status_c,
        pse_target_date_c,
        pse_total_number_of_tasks_c,
        pse_version_c,
        system_modstamp

    from source

)

select * from renamed
