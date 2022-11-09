
with source as (

    select * from {{ source('raw_salesforce', 'fstr_queued_step_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_approval_to_create_c,
        fstr_business_process_c,
        fstr_callout_data_c,
        fstr_campaign_c,
        fstr_case_c,
        fstr_chatter_data_c,
        fstr_checklist_to_create_c,
        fstr_contract_c,
        fstr_date_to_create_c,
        fstr_lead_c,
        fstr_message_c,
        fstr_opportunity_c,
        fstr_parent_event_id_c,
        fstr_pce_step_c,
        fstr_process_record_ext_c,
        fstr_record_to_create_c,
        fstr_record_to_create_type_c,
        fstr_send_notification_email_c,
        fstr_status_c,
        fstr_step_assignment_data_c,
        fstr_step_data_c,
        fstr_step_type_c,
        fstr_text_data_c,
        fstr_time_to_create_c,
        fstr_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
