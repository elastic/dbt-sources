
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_recognition_transaction_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_currency_c,
        ffrr_description_c,
        ffrr_error_c,
        ffrr_error_log_c,
        ffrr_errors_manager_c,
        ffrr_grouped_by_c,
        ffrr_legislation_type_c,
        ffrr_originating_process_c,
        ffrr_period_c,
        ffrr_recognition_period_c,
        ffrr_recognized_date_c,
        ffrr_status_c,
        ffrr_total_failed_lines_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        net_suite_id_c,
        owner_id,
        subsidiary_c,
        system_modstamp,
        ffrr_total_amortized_balance_sheet_c,
        ffrr_total_amortized_income_statement_c,
        ffrr_total_balance_sheet_c,
        ffrr_total_income_statement_c,
        ffrr_total_line_amortized_balance_sheet_c,
        ffrr_total_line_amortized_income_statement_c,
        ffrr_total_line_balance_sheet_c,
        ffrr_total_line_income_statement_c,
        ffrr_total_summary_amortized_balance_sheet_c,
        ffrr_total_summary_amortized_income_statement_c,
        ffrr_total_summary_balance_sheet_c,
        ffrr_total_summary_income_statement_c,
        ffrr_total_transaction_lines_c

    from source

)

select * from renamed
