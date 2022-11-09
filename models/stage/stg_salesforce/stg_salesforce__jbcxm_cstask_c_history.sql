
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_cstask_c_history') }}

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
        jbcxm_account_c,
        jbcxm_assigned_c,
        jbcxm_closed_date_c,
        jbcxm_created_date_c,
        jbcxm_cta_c,
        jbcxm_date_c,
        jbcxm_delta_days_c,
        jbcxm_description_c,
        jbcxm_display_order_c,
        jbcxm_due_date_src_c,
        jbcxm_dynamic_data_c,
        jbcxm_gsclosed_overdue_c,
        jbcxm_gsdays_due_c,
        jbcxm_gsdays_past_due_date_c,
        jbcxm_gsdays_to_close_c,
        jbcxm_gsdays_until_close_c,
        jbcxm_gsdue_date_variance_c,
        jbcxm_gsoverdue_c,
        jbcxm_gsoverdue_type_c,
        jbcxm_is_closed_c,
        jbcxm_is_email_sent_c,
        jbcxm_is_imp_c,
        jbcxm_original_due_date_c,
        jbcxm_parent_c,
        jbcxm_playbook_c,
        jbcxm_priority_c,
        jbcxm_related_record_id_c,
        jbcxm_skip_option_c,
        jbcxm_source_c,
        jbcxm_start_date_c,
        jbcxm_status_c,
        jbcxm_subject_c,
        jbcxm_sync_c,
        jbcxm_task_reference_c,
        jbcxm_timeline_activity_id_c,
        jbcxm_to_email_type_c,
        jbcxm_type_c,
        jbcxm_uid_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
