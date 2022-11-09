
with source as (

    select * from {{ source('raw_salesforce', 'tspc_template_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        tspc_deploy_rd_mode_c,
        tspc_deploy_rd_offset_c,
        tspc_deploy_rd_offset_unit_c,
        tspc_description_c,
        tspc_display_name_c,
        tspc_eid_c,
        tspc_filter_field_1_name_c,
        tspc_filter_field_1_opr_c,
        tspc_filter_field_1_type_c,
        tspc_filter_field_1_value_c,
        tspc_filter_field_2_name_c,
        tspc_filter_field_2_opr_c,
        tspc_filter_field_2_type_c,
        tspc_filter_field_2_value_c,
        tspc_filter_field_3_name_c,
        tspc_filter_field_3_opr_c,
        tspc_filter_field_3_type_c,
        tspc_filter_field_3_value_c,
        tspc_filter_is_enabled_c,
        tspc_filter_logic_c,
        tspc_parent_c,
        tspc_pb_has_people_c,
        tspc_pb_is_mutual_c,
        tspc_sc_total_max_score_c,
        tspc_source_c,
        tspc_stage_ap_enabled_c,
        tspc_stage_ap_event_behavior_c,
        tspc_stage_ap_process_data_c,
        tspc_stage_ap_process_id_c,
        tspc_stakeholders_config_data_c,
        tspc_status_c,
        tspc_type_c,
        tspc_version_c,
        tspc_version_description_c,
        tspc_version_name_c

    from source

)

select * from renamed
