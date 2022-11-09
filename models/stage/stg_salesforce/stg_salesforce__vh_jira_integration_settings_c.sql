
with source as (

    select * from {{ source('raw_salesforce', 'vh_jira_integration_settings_c') }}

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
        setup_owner_id,
        system_modstamp,
        vh_add_opportunity_stage_c,
        vh_add_primary_competitors_c,
        vh_assign_layout_c,
        vh_assign_users_c,
        vh_configure_product_gap_attributes_c,
        vh_end_point_url_c,
        vh_is_connected_c,
        vh_last_updated_c,
        vh_password_c,
        vh_permission_created_c,
        vh_remote_site_setting_c,
        vh_schedule_reporting_snapshot_c,
        vh_scheduled_job_status_c,
        vh_sync_account_names_c,
        vh_username_c

    from source

)

select * from renamed
