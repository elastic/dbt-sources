
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_auto_merge_setting_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_create_task_c,
        crmfusion_dbr_101_default_include_in_task_c,
        crmfusion_dbr_101_default_mergeable_action_c,
        crmfusion_dbr_101_default_nonmergeable_action_c,
        crmfusion_dbr_101_key_c,
        crmfusion_dbr_101_merge_priority_c,
        crmfusion_dbr_101_merge_target_c,
        crmfusion_dbr_101_scenario_c,
        crmfusion_dbr_101_task_due_date_c,
        crmfusion_dbr_101_task_owner_c,
        crmfusion_dbr_101_task_status_c,
        crmfusion_dbr_101_task_subject_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
