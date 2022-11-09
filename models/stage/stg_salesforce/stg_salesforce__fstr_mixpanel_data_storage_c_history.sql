
with source as (

    select * from {{ source('raw_salesforce', 'fstr_mixpanel_data_storage_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_definition_data_c,
        fstr_definition_object_types_c,
        fstr_distinct_users_30_c,
        fstr_distinct_users_90_c,
        fstr_distinct_users_c,
        fstr_initiator_object_types_c,
        fstr_major_version_c,
        fstr_minor_version_c,
        fstr_patch_c,
        fstr_total_approval_steps_c,
        fstr_total_checklist_items_c,
        fstr_total_checklists_c,
        fstr_total_definitions_c,
        fstr_total_delayed_steps_c,
        fstr_total_dependencies_c,
        fstr_total_document_generation_c,
        fstr_total_email_alerts_c,
        fstr_total_event_placeholders_c,
        fstr_total_field_update_steps_c,
        fstr_total_field_updates_c,
        fstr_total_initiator_criteria_c,
        fstr_total_initiators_c,
        fstr_total_loop_back_steps_c,
        fstr_total_pcesteps_c,
        fstr_total_steps_c,
        fstr_total_tasks_90_c,
        fstr_total_tasks_c,
        fstr_total_validations_c,
        fstr_total_webservice_callouts_c,
        fstr_user_count_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
