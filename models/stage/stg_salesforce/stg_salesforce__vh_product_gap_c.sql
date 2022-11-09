
with source as (

    select * from {{ source('raw_salesforce', 'vh_product_gap_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        vh_account_breaker_gap_count_c,
        vh_account_breaker_gap_sum_c,
        vh_account_challenge_gap_count_c,
        vh_account_challenge_gap_sum_c,
        vh_account_gap_count_c,
        vh_account_gap_sum_c,
        vh_account_gap_weighted_yield_sum_c,
        vh_account_gap_yield_sum_c,
        vh_completed_c,
        vh_date_delivered_c,
        vh_deal_breaker_opportunity_gap_count_c,
        vh_deal_breaker_opportunity_gap_sum_c,
        vh_deal_challenge_opportunity_gap_count_c,
        vh_deal_challenge_opportunity_gap_sum_c,
        vh_description_c,
        vh_feature_group_c,
        vh_interim_solution_c,
        vh_jira_completed_issues_c,
        vh_jira_status_c,
        vh_jira_total_issues_c,
        vh_merge_target_c,
        vh_nice_to_have_account_gap_count_c,
        vh_nice_to_have_account_gap_sum_c,
        vh_nice_to_have_opportunity_gap_count_c,
        vh_nice_to_have_opportunity_gap_sum_c,
        vh_opportunity_gap_count_c,
        vh_opportunity_gap_sum_c,
        vh_opportunity_gap_weighted_yield_sum_c,
        vh_opportunity_gap_yield_sum_c,
        vh_percent_complete_c,
        vh_product_area_c,
        vh_product_line_c,
        vh_review_gap_c,
        vh_size_c,
        vh_status_c,
        vh_total_breaker_gap_count_c,
        vh_total_challenge_gap_count_c,
        vh_total_gap_count_c,
        vh_total_nice_to_have_gap_count_c,
        product_gap_created_by_workday_id_c,
        product_gap_owner_workday_id_c,
        total_product_gap_sum_c

    from source

)

select * from renamed
