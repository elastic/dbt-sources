
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_automated_alert_rules_c_history') }}

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
        jbcxm_advance_criteria_c,
        jbcxm_alert_count_c,
        jbcxm_alert_criteria_c,
        jbcxm_description_c,
        jbcxm_email_criteria_c,
        jbcxm_entity_type_c,
        jbcxm_external_id_c,
        jbcxm_last_rule_updated_by_c,
        jbcxm_last_rule_updated_date_c,
        jbcxm_last_run_date_c,
        jbcxm_last_run_result_c,
        jbcxm_last_success_millis_c,
        jbcxm_next_scheduled_run_c,
        jbcxm_play_book_ids_c,
        jbcxm_relationship_type_c,
        jbcxm_rule_description_c,
        jbcxm_rule_flow_info_c,
        jbcxm_rule_type_c,
        jbcxm_score_card_metric_c,
        jbcxm_scorecard_criteria_c,
        jbcxm_select_fields_c,
        jbcxm_source_type_c,
        jbcxm_status_c,
        jbcxm_task_default_owner_c,
        jbcxm_task_owner_field_c,
        jbcxm_trigger_criteria_c,
        jbcxm_triggered_usage_on_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
