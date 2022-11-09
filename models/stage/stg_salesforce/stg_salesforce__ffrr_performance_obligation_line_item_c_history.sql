
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_performance_obligation_line_item_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_name_c,
        ffrr_active_c,
        ffrr_balance_sheet_account_c,
        ffrr_completed_c,
        ffrr_cost_balance_sheet_account_c,
        ffrr_cost_c,
        ffrr_cost_center_account_c,
        ffrr_cost_cost_center_account_c,
        ffrr_cost_income_statement_account_c,
        ffrr_description_c,
        ffrr_end_date_c,
        ffrr_field_mapping_c,
        ffrr_income_statement_account_c,
        ffrr_is_controlling_cost_poli_c,
        ffrr_is_controlling_poli_c,
        ffrr_percentage_complete_c,
        ffrr_performance_obligation_c,
        ffrr_revenue_c,
        ffrr_source_record_setting_c,
        ffrr_ssp_c,
        ffrr_start_date_c,
        ffrr_value_type_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
