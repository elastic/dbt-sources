
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_settings_test_secondary_object_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_another_number_c,
        ffrr_balance_sheet_c,
        ffrr_billed_c,
        ffrr_boolean_c,
        ffrr_company_c,
        ffrr_completebox_c,
        ffrr_completelist_c,
        ffrr_cost_balance_sheet_c,
        ffrr_cost_centre_c,
        ffrr_cost_cost_center_c,
        ffrr_cost_income_statement_c,
        ffrr_currency_c,
        ffrr_currency_lookup_c,
        ffrr_date_2_c,
        ffrr_date_c,
        ffrr_encrypted_date_c,
        ffrr_encrypted_text_c,
        ffrr_end_date_c,
        ffrr_ffrrtemplate_c,
        ffrr_group_c,
        ffrr_income_statement_c,
        ffrr_number_c,
        ffrr_opportunity_c,
        ffrr_percent_c,
        ffrr_percent_completed_c,
        ffrr_picklist_c,
        ffrr_practice_c,
        ffrr_region_c,
        ffrr_rich_text_area_c,
        ffrr_settings_test_object_c,
        ffrr_settings_test_object_lookup_c,
        ffrr_text_c,
        ffrr_total_hours_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        ffrr_recognized_to_date_value_dual_c,
        ffrr_deferred_revenue_to_date_home_currency_c,
        ffrr_recognized_to_date_value_home_c,
        ffrr_true_up_account_c,
        ffrr_deferred_revenue_to_date_c,
        ffrr_deferred_revenue_to_date_dual_currency_c,
        ffrr_deferred_revenue_to_date_reporting_currency_c

    from source

)

select * from renamed
