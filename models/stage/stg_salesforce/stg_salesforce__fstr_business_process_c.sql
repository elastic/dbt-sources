
with source as (

    select * from {{ source('raw_salesforce', 'fstr_business_process_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_already_generated_c,
        fstr_approval_c,
        fstr_auto_close_c,
        fstr_auto_close_steps_not_created_c,
        fstr_business_account_c,
        fstr_business_process_c,
        fstr_case_c,
        fstr_client_c,
        fstr_completed_by_c,
        fstr_completed_date_c,
        fstr_contract_c,
        fstr_days_to_complete_c,
        fstr_days_to_complete_target_c,
        fstr_definition_title_c,
        fstr_description_c,
        fstr_due_date_c,
        fstr_email_queue_members_c,
        fstr_opportunity_c,
        fstr_parent_event_id_c,
        fstr_parent_object_name_c,
        fstr_pce_definition_c,
        fstr_pce_definition_lookup_c,
        fstr_process_group_c,
        fstr_process_initiated_c,
        fstr_recurring_business_process_c,
        fstr_rl_sort_c,
        fstr_skipped_steps_c,
        fstr_status_c,
        fstr_step_id_c,
        fstr_step_lookup_c,
        fstr_step_stage_id_c,
        fstr_subject_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        record_type_id,
        system_modstamp

    from source

)

select * from renamed
