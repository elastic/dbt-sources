
with source as (

    select * from {{ source('raw_salesforce', 'pse_version_item_project_detail_c') }}

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
        pse_account_id_c,
        pse_account_name_c,
        pse_billing_type_c,
        pse_end_date_c,
        pse_group_id_c,
        pse_group_name_c,
        pse_is_active_c,
        pse_is_billable_c,
        pse_opportunity_id_c,
        pse_opportunity_name_c,
        pse_original_created_by_id_c,
        pse_original_created_by_name_c,
        pse_original_created_date_c,
        pse_original_id_c,
        pse_original_last_modified_by_id_c,
        pse_original_last_modified_by_name_c,
        pse_original_last_modified_date_c,
        pse_original_owner_id_c,
        pse_original_owner_name_c,
        pse_practice_id_c,
        pse_practice_name_c,
        pse_project_manager_id_c,
        pse_project_manager_name_c,
        pse_project_name_c,
        pse_project_phase_c,
        pse_project_status_c,
        pse_project_type_c,
        pse_region_id_c,
        pse_region_name_c,
        pse_stage_c,
        pse_start_date_c,
        pse_total_costs_c,
        pse_version_c,
        system_modstamp

    from source

)

select * from renamed
