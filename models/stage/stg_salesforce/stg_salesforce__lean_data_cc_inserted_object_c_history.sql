
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_cc_inserted_object_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_account_c,
        lean_data_account_routing_logic_key_c,
        lean_data_contact_c,
        lean_data_convert_lead_c,
        lean_data_graph_node_c,
        lean_data_is_match_relevant_update_c,
        lean_data_is_processed_c,
        lean_data_is_update_c,
        lean_data_l_2_a_routing_status_c,
        lean_data_lead_c,
        lean_data_object_type_c,
        lean_data_old_account_c,
        lean_data_opportunity_c,
        lean_data_parent_log_c,
        lean_data_pending_action_c,
        lean_data_processing_attempts_c,
        lean_data_processing_priority_c,
        lean_data_routing_deployment_c,
        lean_data_scheduled_processing_time_c,
        lean_data_serialized_primary_c,
        lean_data_trigger_edge_label_c,
        lean_data_update_status_c,
        lean_data_updated_fields_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_graph_node_json_c,
        lean_data_immediate_update_c,
        lean_data_order_timestamp_c,
        lean_data_queued_for_update_c,
        lean_data_triggering_account_c,
        lean_data_unique_name_c,
        lean_data_updated_values_c,
        lean_data_case_c,
        lean_data_primary_id_c,
        lean_data_graph_reentry_json_c,
        lean_data_lead_conversion_c,
        lean_data_object_id_c,
        lean_data_campaign_member_c

    from source

)

select * from renamed
