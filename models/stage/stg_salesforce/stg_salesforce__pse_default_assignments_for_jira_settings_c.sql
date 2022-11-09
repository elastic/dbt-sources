
with source as (

    select * from {{ source('raw_salesforce', 'pse_default_assignments_for_jira_settings_c') }}

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
        pse_default_assignments_for_jira_batch_size_c,
        pse_notification_recipients_c,
        pse_notifications_by_chatter_c,
        pse_notifications_by_email_c,
        pse_notifications_by_task_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed