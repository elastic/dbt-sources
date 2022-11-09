
with source as (

    select * from {{ source('raw_salesforce', 'pse_version_item_task_c_history') }}

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
        pse_actual_end_date_time_c,
        pse_actual_hours_c,
        pse_actual_start_date_time_c,
        pse_assigned_resources_c,
        pse_blocked_c,
        pse_completed_c,
        pse_end_date_time_c,
        pse_estimated_hours_c,
        pse_hierarchy_depth_c,
        pse_hours_remaining_c,
        pse_order_c,
        pse_original_created_by_id_c,
        pse_original_created_by_name_c,
        pse_original_created_date_c,
        pse_original_id_c,
        pse_original_last_modified_by_id_c,
        pse_original_last_modified_by_name_c,
        pse_original_last_modified_date_c,
        pse_original_owner_id_c,
        pse_original_owner_name_c,
        pse_parent_task_id_c,
        pse_parent_task_name_c,
        pse_percent_complete_hours_c,
        pse_points_c,
        pse_project_task_name_c,
        pse_start_date_time_c,
        pse_status_c,
        pse_summary_c,
        pse_task_key_chain_c,
        pse_task_number_c,
        pse_version_c,
        system_modstamp

    from source

)

select * from renamed
