
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_scenario_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_allow_block_bypass_c,
        crmfusion_dbr_101_apex_handler_c,
        crmfusion_dbr_101_block_related_matches_c,
        crmfusion_dbr_101_bypass_security_c,
        crmfusion_dbr_101_create_task_c,
        crmfusion_dbr_101_deployed_c,
        crmfusion_dbr_101_disable_hash_calculation_c,
        crmfusion_dbr_101_duplicates_blocked_c,
        crmfusion_dbr_101_duplicates_merged_c,
        crmfusion_dbr_101_enable_dual_filters_c,
        crmfusion_dbr_101_error_message_c,
        crmfusion_dbr_101_hash_key_bits_c,
        crmfusion_dbr_101_last_key_rebuild_c,
        crmfusion_dbr_101_match_on_insert_action_c,
        crmfusion_dbr_101_match_on_insert_result_c,
        crmfusion_dbr_101_match_on_update_action_c,
        crmfusion_dbr_101_match_on_update_result_c,
        crmfusion_dbr_101_max_blocks_shown_c,
        crmfusion_dbr_101_person_account_scenario_c,
        crmfusion_dbr_101_rebuild_needed_c,
        crmfusion_dbr_101_rebuild_process_id_c,
        crmfusion_dbr_101_scenario_number_c,
        crmfusion_dbr_101_scenario_type_c,
        crmfusion_dbr_101_visual_force_handler_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        crmfusion_dbr_101_duplicate_warning_count_c,
        crmfusion_dbr_101_potential_duplicate_record_count_c,
        crmfusion_dbr_101_scenario_rule_count_c

    from source

)

select * from renamed
