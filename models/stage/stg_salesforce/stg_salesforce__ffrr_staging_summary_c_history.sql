
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_staging_summary_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_id_c,
        ffrr_account_name_c,
        ffrr_amended_cost_detail_count_c,
        ffrr_amended_cost_leaf_count_c,
        ffrr_amended_detail_count_c,
        ffrr_amended_leaf_count_c,
        ffrr_detail_cost_c,
        ffrr_detail_count_c,
        ffrr_detail_error_count_c,
        ffrr_detail_previously_amortized_c,
        ffrr_detail_previously_recognized_c,
        ffrr_detail_revenue_c,
        ffrr_detail_to_amortize_this_period_c,
        ffrr_detail_to_recognize_this_period_c,
        ffrr_error_message_c,
        ffrr_grouping_fields_c,
        ffrr_grouping_hashed_fields_c,
        ffrr_grouping_hashed_values_c,
        ffrr_grouping_values_c,
        ffrr_leaf_cost_c,
        ffrr_leaf_count_c,
        ffrr_leaf_error_count_c,
        ffrr_leaf_previously_amortized_c,
        ffrr_leaf_previously_recognized_c,
        ffrr_leaf_revenue_c,
        ffrr_leaf_to_amortize_this_period_c,
        ffrr_leaf_to_recognize_this_period_c,
        ffrr_original_record_id_c,
        ffrr_source_record_id_c,
        ffrr_source_record_name_c,
        ffrr_staging_summary_c,
        ffrr_total_amended_cost_detail_count_c,
        ffrr_total_amended_cost_leaf_count_c,
        ffrr_total_amended_detail_count_c,
        ffrr_total_amended_leaf_count_c,
        ffrr_total_detail_cost_c,
        ffrr_total_detail_count_c,
        ffrr_total_detail_error_count_c,
        ffrr_total_detail_previously_amortized_c,
        ffrr_total_detail_previously_recognized_c,
        ffrr_total_detail_revenue_c,
        ffrr_total_detail_to_amortize_this_period_c,
        ffrr_total_detail_to_recognize_this_period_c,
        ffrr_total_leaf_cost_c,
        ffrr_total_leaf_count_c,
        ffrr_total_leaf_error_count_c,
        ffrr_total_leaf_previously_amortized_c,
        ffrr_total_leaf_previously_recognized_c,
        ffrr_total_leaf_revenue_c,
        ffrr_total_leaf_to_amortize_this_period_c,
        ffrr_total_leaf_to_recognize_this_period_c,
        ffrr_uniqueness_c,
        ffrr_version_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
