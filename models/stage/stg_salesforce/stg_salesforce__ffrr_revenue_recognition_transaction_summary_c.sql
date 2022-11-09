
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_recognition_transaction_summary_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_c,
        ffrr_account_type_c,
        ffrr_amount_amortized_c,
        ffrr_amount_recognized_c,
        ffrr_cost_center_c,
        ffrr_grouping_field_key_c,
        ffrr_grouping_key_c,
        ffrr_internal_amortized_amount_c,
        ffrr_internal_amount_c,
        ffrr_journal_amortized_amount_c,
        ffrr_journal_amount_c,
        ffrr_revenue_recognition_transaction_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        ffrr_analysis_item_1_c,
        ffrr_home_currency_c,
        ffrr_product_c,
        ffrr_analysis_item_2_c,
        ffrr_analysis_item_3_c,
        ffrr_journal_amount_home_c,
        ffrr_salesforce_account_c,
        ffrr_dual_currency_c,
        ffrr_journal_amortized_dual_amount_c,
        ffrr_primary_object_record_name_c,
        ffrr_journal_amortized_home_amount_c,
        ffrr_analysis_item_4_c,
        ffrr_journal_amount_dual_c

    from source

)

select * from renamed
