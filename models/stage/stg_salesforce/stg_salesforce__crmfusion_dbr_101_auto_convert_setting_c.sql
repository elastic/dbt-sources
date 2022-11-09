
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_auto_convert_setting_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_contact_owner_c,
        crmfusion_dbr_101_conversion_priority_c,
        crmfusion_dbr_101_conversion_target_c,
        crmfusion_dbr_101_converted_status_c,
        crmfusion_dbr_101_create_opportunity_c,
        crmfusion_dbr_101_create_task_c,
        crmfusion_dbr_101_default_include_in_task_c,
        crmfusion_dbr_101_key_c,
        crmfusion_dbr_101_opportunity_close_date_c,
        crmfusion_dbr_101_opportunity_name_c,
        crmfusion_dbr_101_opportunity_owner_c,
        crmfusion_dbr_101_opportunity_stage_c,
        crmfusion_dbr_101_scenario_c,
        crmfusion_dbr_101_send_notification_email_c,
        crmfusion_dbr_101_task_due_date_c,
        crmfusion_dbr_101_task_owner_c,
        crmfusion_dbr_101_task_status_c,
        crmfusion_dbr_101_task_subject_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        crmfusion_dbr_101_server_url_c

    from source

)

select * from renamed
