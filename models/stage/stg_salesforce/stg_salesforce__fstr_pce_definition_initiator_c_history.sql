
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_definition_initiator_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_assign_process_object_by_c,
        fstr_description_c,
        fstr_due_date_adjustment_c,
        fstr_initiation_criteria_c,
        fstr_is_active_c,
        fstr_monitored_object_c,
        fstr_monitored_operations_c,
        fstr_obj_data_1_c,
        fstr_obj_data_2_c,
        fstr_pce_definition_c,
        fstr_process_object_owner_queue_c,
        fstr_process_object_owner_role_c,
        fstr_process_object_owner_user_c,
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
