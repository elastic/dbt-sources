
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_forecast_transaction_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_c,
        ffrr_category_c,
        ffrr_currency_c,
        ffrr_description_c,
        ffrr_draft_uniqueness_c,
        ffrr_end_date_c,
        ffrr_error_c,
        ffrr_errors_manager_c,
        ffrr_exp_project_c,
        ffrr_exp_total_forecast_currency_c,
        ffrr_latest_c,
        ffrr_locked_c,
        ffrr_number_of_forecast_lines_c,
        ffrr_primary_object_record_id_c,
        ffrr_primary_object_record_name_c,
        ffrr_recognition_year_c,
        ffrr_revenue_contract_c,
        ffrr_revision_c,
        ffrr_settings_c,
        ffrr_start_date_c,
        ffrr_status_c,
        ffrr_total_forecast_c,
        ffrr_total_revenue_c,
        ffrr_unallocated_revenue_c,
        ffrr_uniqueness_c,
        ffrr_uniqueness_revision_c,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        opportunity_c,
        opportunity_product_mirror_c,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
