
with source as (

    select * from {{ source('raw_salesforce', 'tspc_deal_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        tspc_age_before_c,
        tspc_age_c,
        tspc_deploy_rd_date_c,
        tspc_deploy_rd_mode_c,
        tspc_deploy_rd_offset_c,
        tspc_deploy_rd_offset_unit_c,
        tspc_eid_c,
        tspc_event_canceled_count_c,
        tspc_event_completed_count_c,
        tspc_event_count_c,
        tspc_event_cscount_c,
        tspc_event_csopen_count_c,
        tspc_event_csprogress_c,
        tspc_event_csprogress_finer_c,
        tspc_event_in_progress_count_c,
        tspc_event_not_applicable_count_c,
        tspc_event_not_started_count_c,
        tspc_event_on_hold_count_c,
        tspc_event_open_count_c,
        tspc_event_progress_c,
        tspc_hash_c,
        tspc_mod_stamp_pb_c,
        tspc_mod_stamp_rs_c,
        tspc_mod_stamp_sc_c,
        tspc_opportunity_c,
        tspc_owner_id_c,
        tspc_photo_url_c,
        tspc_rating_c,
        tspc_rel_role_goal_progress_c,
        tspc_rel_role_goal_required_count_c,
        tspc_scorecard_question_count_c,
        tspc_scorecard_score_ratio_c,
        tspc_scorecard_total_max_score_c,
        tspc_scorecard_total_score_c,
        tspc_stakeholder_count_c,
        tspc_status_c,
        tspc_template_c,
        tspc_template_deploy_date_c,
        deal_review_champion_c,
        deal_review_competition_c,
        deal_review_decision_criteria_c,
        deal_review_identify_pain_c,
        deal_review_economic_buyer_c,
        deal_review_paper_process_c,
        deal_review_metrics_c,
        deal_review_decision_process_c

    from source

)

select * from renamed
