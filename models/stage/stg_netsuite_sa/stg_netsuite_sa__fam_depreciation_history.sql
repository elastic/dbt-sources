
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_depreciation_history') }}

),

renamed as (

    select
        fam_depreciation_history_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book_id,
        actual_depreciation_method_id,
        alternate__depreciation_id,
        alternate_method_id,
        asset_id,
        asset_type_id,
        date_0,
        date_created,
        date_deleted,
        depreciation_method_id,
        depreciation_period,
        fam_depreciation_history_extid,
        fam_depreciation_history_name,
        is_inactive,
        last_modified_date,
        net_book_value,
        parent_asset_slave_id,
        parent_id,
        period,
        period_deprecated,
        posting_reference_id,
        prior_year_nbv,
        quantity,
        schedule,
        scheduled_amount,
        scheduled_nbv,
        subsidiary_id,
        summary_record_id,
        transaction_amount,
        transaction_type_id,
        write_in_journal_deprecated,
        parent_asset_value_id

    from source

)

select * from renamed
