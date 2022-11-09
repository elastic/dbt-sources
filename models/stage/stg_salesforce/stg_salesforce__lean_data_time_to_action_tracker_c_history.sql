
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_time_to_action_tracker_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        lean_data_abort_reason_c,
        lean_data_account_c,
        lean_data_case_c,
        lean_data_contact_c,
        lean_data_entry_log_c,
        lean_data_evaluate_while_working_c,
        lean_data_exit_edge_c,
        lean_data_exit_log_c,
        lean_data_exit_time_c,
        lean_data_ld_business_unit_c,
        lean_data_lead_c,
        lean_data_node_name_c,
        lean_data_opportunity_c,
        lean_data_owner_id_c,
        lean_data_primary_id_c,
        lean_data_schedule_at_entry_time_c,
        lean_data_start_time_c,
        lean_data_status_c,
        lean_data_time_to_action_calculated_c,
        lean_data_time_to_action_raw_c,
        lean_data_timer_c,
        lean_data_user_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
