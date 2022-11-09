
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_routing_deployment_c_history') }}

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
        lean_data_end_date_c,
        lean_data_graph_json_2_c,
        lean_data_graph_json_3_c,
        lean_data_graph_json_4_c,
        lean_data_graph_json_5_c,
        lean_data_graph_json_6_c,
        lean_data_graph_json_c,
        lean_data_graph_version_c,
        lean_data_metric_translation_json_c,
        lean_data_name_c,
        lean_data_object_type_c,
        lean_data_query_fields_c,
        lean_data_type_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_graph_json_7_c,
        lean_data_graph_json_hash_c,
        lean_data_insert_trigger_conditions_c,
        lean_data_ld_business_unit_c,
        lean_data_metric_translation_json_1_c,
        lean_data_node_name_to_height_map_c,
        lean_data_parent_deployment_c,
        lean_data_parent_graph_c,
        lean_data_presence_map_c,
        lean_data_update_trigger_conditions_c,
        lean_data_matching_trigger_edges_c,
        lean_data_write_fields_c

    from source

)

select * from renamed
