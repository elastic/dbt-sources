
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_batch_settings_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_actuals_retrieve_lines_batch_size_c,
        ffrr_actuals_transaction_commit_batch_size_c,
        ffrr_actuals_transaction_save_batch_size_c,
        ffrr_actuals_transaction_summary_batch_size_c,
        ffrr_avfcreate_from_actuals_batch_size_c,
        ffrr_avfcreate_from_forecast_batch_size_c,
        ffrr_avfdelete_lines_batch_size_c,
        ffrr_forecast_draft_transaction_delete_batch_size_c,
        ffrr_forecast_transaction_save_batch_size_c,
        ffrr_generate_forecasts_batch_size_c,
        ffrr_grouping_btcdelete_batch_size_c,
        ffrr_grouping_create_batch_size_c,
        ffrr_grouping_create_synchronous_limit_c,
        ffrr_grouping_delete_synchronous_limit_c,
        ffrr_grouping_summary_delete_batch_size_c,
        ffrr_last_opportunity_product_mirror_batch_c,
        ffrr_opportunity_product_mirror_batch_size_c,
        ffrr_opportunity_product_mirror_delete_batch_size_c,
        ffrr_process_control_delete_batch_size_c,
        ffrr_staging_btcdelete_batch_size_c,
        ffrr_staging_create_batch_size_c,
        ffrr_staging_create_synchronous_limit_c,
        ffrr_staging_delete_synchronous_limit_c,
        ffrr_staging_detail_delete_batch_size_c,
        ffrr_staging_save_batch_size_c,
        ffrr_staging_save_synchronous_limit_c,
        ffrr_staging_summary_delete_batch_size_c,
        ffrr_staging_version_delete_batch_size_c,
        ffrr_transfer_previously_recognized_batch_size_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        ffrr_rrtto_journal_creation_batch_size_c,
        ffrr_manage_revenue_contract_send_email_c,
        ffrr_manage_revenue_contract_batch_size_c,
        ffrr_manage_revenue_contract_synchronous_limit_c

    from source

)

select * from renamed
