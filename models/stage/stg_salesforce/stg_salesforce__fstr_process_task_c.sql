
with source as (

    select * from {{ source('raw_salesforce', 'fstr_process_task_c') }}

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
        fstr_business_account_c,
        fstr_business_process_c,
        fstr_campaign_c,
        fstr_case_c,
        fstr_checklist_c,
        fstr_client_c,
        fstr_completed_by_c,
        fstr_completed_date_c,
        fstr_contract_c,
        fstr_description_c,
        fstr_due_date_c,
        fstr_email_queue_members_c,
        fstr_lead_c,
        fstr_opportunity_c,
        fstr_parent_event_id_c,
        fstr_parent_object_name_c,
        fstr_status_c,
        fstr_step_id_c,
        fstr_step_lookup_c,
        fstr_step_stage_id_c,
        fstr_subject_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        record_type_id,
        system_modstamp

    from source

)

select * from renamed
