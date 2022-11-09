
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_ld_partner_log_c_history') }}

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
        lean_data_account_c,
        lean_data_action_type_c,
        lean_data_aggregate_callout_key_c,
        lean_data_callout_created_date_c,
        lean_data_callout_duration_c,
        lean_data_callout_history_c,
        lean_data_callout_priority_c,
        lean_data_callout_status_c,
        lean_data_contact_c,
        lean_data_endpoint_suffix_2_c,
        lean_data_endpoint_suffix_c,
        lean_data_error_responses_c,
        lean_data_header_c,
        lean_data_ld_partner_c,
        lean_data_lead_c,
        lean_data_log_c,
        lean_data_method_c,
        lean_data_node_name_c,
        lean_data_opportunity_c,
        lean_data_parent_callout_key_c,
        lean_data_partner_name_c,
        lean_data_processing_attempts_c,
        lean_data_processing_duration_c,
        lean_data_reason_c,
        lean_data_request_body_c,
        lean_data_response_c,
        lean_data_response_status_c,
        lean_data_response_status_code_c,
        lean_data_target_object_c,
        lean_data_target_object_id_c,
        lean_data_target_object_type_c,
        lean_data_total_duration_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_case_c

    from source

)

select * from renamed
