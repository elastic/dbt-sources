
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_customer_info_c_history') }}

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
        jbcxm_account_c,
        jbcxm_active_alert_count_c,
        jbcxm_asv_c,
        jbcxm_churn_c,
        jbcxm_comments_c,
        jbcxm_cur_score_id_c,
        jbcxm_customer_lifetime_in_months_c,
        jbcxm_customer_name_c,
        jbcxm_goals_c,
        jbcxm_industry_c,
        jbcxm_instance_list_c,
        jbcxm_life_cycle_in_year_c,
        jbcxm_life_cycle_weeks_per_year_c,
        jbcxm_lifecycle_in_weeks_c,
        jbcxm_mrr_c,
        jbcxm_next_renewal_date_c,
        jbcxm_nps_c,
        jbcxm_one_time_revenue_c,
        jbcxm_original_contract_date_c,
        jbcxm_original_contract_number_c,
        jbcxm_prev_score_id_c,
        jbcxm_revenue_band_c,
        jbcxm_scorecard_comment_c,
        jbcxm_stage_c,
        jbcxm_status_c,
        jbcxm_tag_c,
        jbcxm_trend_indicator_c,
        jbcxm_ultimate_parent_c,
        jbcxm_users_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
