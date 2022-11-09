
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_staging_detail_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_id_c,
        ffrr_account_name_c,
        ffrr_error_message_c,
        ffrr_grouping_fields_c,
        ffrr_grouping_hashed_fields_c,
        ffrr_grouping_hashed_values_c,
        ffrr_grouping_values_c,
        ffrr_is_leaf_c,
        ffrr_original_record_id_c,
        ffrr_original_to_amortize_this_period_c,
        ffrr_original_to_recognize_this_period_c,
        ffrr_previously_amortized_c,
        ffrr_previously_recognized_c,
        ffrr_source_record_id_c,
        ffrr_source_record_name_c,
        ffrr_staging_summary_c,
        ffrr_template_c,
        ffrr_to_amortize_this_period_c,
        ffrr_to_recognize_this_period_c,
        ffrr_total_cost_c,
        ffrr_total_revenue_c,
        ffrr_uniqueness_c,
        ffrr_version_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        ffrr_amended_c,
        ffrr_amended_cost_c,
        ffrr_document_currency_rate_c,
        ffrr_dual_currency_c,
        ffrr_dual_currency_rate_c,
        ffrr_home_currency_c

    from source

)

select * from renamed
