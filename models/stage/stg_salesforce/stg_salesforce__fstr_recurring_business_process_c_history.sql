
with source as (

    select * from {{ source('raw_salesforce', 'fstr_recurring_business_process_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_account_c,
        fstr_assign_process_object_by_c,
        fstr_begin_date_c,
        fstr_contact_c,
        fstr_due_date_adjustment_c,
        fstr_end_date_c,
        fstr_execute_on_c,
        fstr_generate_next_occurrence_c,
        fstr_interval_c,
        fstr_interval_number_c,
        fstr_last_scheduled_occurence_c,
        fstr_next_scheduled_occurence_c,
        fstr_obj_data_1_c,
        fstr_obj_data_2_c,
        fstr_object_name_c,
        fstr_object_type_to_create_name_c,
        fstr_pce_definition_to_execute_c,
        fstr_process_object_owner_queue_c,
        fstr_process_object_owner_role_c,
        fstr_process_object_owner_user_c,
        fstr_record_type_id_c,
        fstr_record_type_to_create_name_c,
        fstr_recurrence_type_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
