
with source as (

    select * from {{ source('raw_netsuite', 'fam_system_setup_history') }}

),

renamed as (

    select
        allow_administrators_to_view_,
        allow_asset_value_editing,
        allow_disable_ue_triggers,
        allow_future_depreciation,
        allow_negative_asset_cost,
        asset_disposal_invoice_form,
        asset_proposal_sublist_fields,
        asset_register_template,
        asset_summary_template,
        autocreate_new_assets_from_pr,
        autopropose_from_asset_accoun,
        batch_search_limit,
        constrain_alternate_asset_lif,
        date_created,
        days_to_store_reports,
        depreciation_schedule_instruc,
        depreciation_schedule_nbv_tem,
        depreciation_schedule_pd_temp,
        fam_generated_files_folder,
        fam_system_setup_extid,
        fam_system_setup_id,
        integer_currencies,
        is_inactive,
        journal_line_limit,
        last_modified_date,
        max_summary_per_journal,
        parent_id,
        posting_tax_migrated,
        post_on_class_change,
        post_on_department_change,
        post_on_location_change,
        post_to_next_open_period_if_a,
        post_to_next_open_period_if__0,
        precompute_depreciation_value,
        prevent_multiple_reset_on_csv,
        propose_approved_transactions,
        queue_limit,
        queue_polling_interval,
        reports_folder,
        report_file_size_limit,
        restrict_ability_to_reject_pr,
        run_server_scripts_on_csv_imp,
        summarise_journals_by_id,
        use_accounting_period_dates_f,
        use_custom_transaction_entrie,
        writedown_using_depreciation_,
        asset_listing_template,
        depreciation_monthly_template,
        use_lease_term_as_asset_life

    from source

)

select * from renamed
