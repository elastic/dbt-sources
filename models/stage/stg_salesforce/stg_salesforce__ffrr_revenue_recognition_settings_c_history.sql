
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_recognition_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_actuals_template_c,
        ffrr_actualvs_forecast_category_c,
        ffrr_create_actualvs_forecast_immediately_c,
        ffrr_create_transaction_summaries_on_commit_c,
        ffrr_csvfolder_unique_name_c,
        ffrr_disable_chatter_csvattachment_c,
        ffrr_disable_period_validation_c,
        ffrr_disable_populate_polifrom_source_records_c,
        ffrr_enable_opportunity_product_mirror_c,
        ffrr_exp_disable_template_population_expenses_c,
        ffrr_exp_disable_template_population_timecard_c,
        ffrr_forecasting_template_c,
        ffrr_last_opportunity_product_mirror_batch_c,
        ffrr_loading_staging_objects_batch_size_c,
        ffrr_select_all_child_limit_c,
        ffrr_transaction_commit_batch_size_c,
        ffrr_transaction_update_batch_size_c,
        ffrr_use_actualvs_forecast_feature_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
