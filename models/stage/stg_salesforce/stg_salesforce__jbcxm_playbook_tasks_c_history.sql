
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_playbook_tasks_c_history') }}

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
        jbcxm_delta_days_c,
        jbcxm_description_c,
        jbcxm_display_order_c,
        jbcxm_due_date_src_c,
        jbcxm_dynamic_fields_c,
        jbcxm_dynamic_owner_c,
        jbcxm_dynamic_owner_label_c,
        jbcxm_is_dynamic_owner_c,
        jbcxm_owner_c,
        jbcxm_parent_c,
        jbcxm_playbook_id_c,
        jbcxm_priority_c,
        jbcxm_skip_option_c,
        jbcxm_status_c,
        jbcxm_subject_c,
        jbcxm_sync_c,
        jbcxm_task_json_c,
        jbcxm_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
