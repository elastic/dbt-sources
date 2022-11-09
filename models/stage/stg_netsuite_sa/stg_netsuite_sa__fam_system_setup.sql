
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_system_setup') }}

),

renamed as (

    select
        fam_system_setup_id,
        _fivetran_deleted,
        _fivetran_synced,
        allow_administrators_to_view_,
        allow_asset_value_editing,
        allow_future_depreciation,
        allow_negative_asset_cost,
        asset_disposal_invoice_form,
        asset_listing_template,
        asset_proposal_sublist_fields,
        asset_register_template,
        asset_summary_template,
        autocreate_new_assets_from_pr,
        autopropose_from_asset_accoun,
        batch_search_limit,
        constrain_alternate_asset_lif,
        date_created,
        date_deleted,
        days_to_store_reports,
        depreciation_monthly_template,
        depreciation_schedule_instruc,
        depreciation_schedule_nbv_tem,
        depreciation_schedule_pd_temp,
        fam_generated_files_folder,
        fam_system_setup_extid,
        integer_currencies,
        is_inactive,
        journal_line_limit,
        last_modified_date,
        max_summary_per_journal,
        parent_id,
        post_on_class_change,
        post_on_department_change,
        post_on_location_change,
        post_to_next_open_period_if__0,
        post_to_next_open_period_if_a,
        posting_tax_migrated,
        precompute_depreciation_value,
        prevent_multiple_reset_on_csv,
        propose_approved_transactions,
        queue_limit,
        queue_polling_interval,
        report_file_size_limit,
        reports_folder,
        restrict_ability_to_reject_pr,
        run_server_scripts_on_csv_imp,
        summarise_journals_by_id,
        use_accounting_period_dates_f,
        use_custom_transaction_entrie,
        use_lease_term_as_asset_life,
        writedown_using_depreciation_,
        country_specific_preferences,
        integer_currencies_deprecated,
        allow_lease_modifications,
        diagnostic_scan_preference

    from source

)

select * from renamed
