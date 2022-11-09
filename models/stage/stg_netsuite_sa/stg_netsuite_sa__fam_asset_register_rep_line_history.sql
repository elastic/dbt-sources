
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_asset_register_rep_line_history') }}

),

renamed as (

    select
        fam_asset_register_rep_line_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book,
        additions,
        alternate_depreciation,
        asset_id,
        asset_life,
        asset_name,
        asset_type,
        beginning_balance,
        beginning_cost,
        beginning_depreciation,
        currency_iso,
        date_created,
        date_deleted,
        depreciation,
        depreciation_start_date,
        disposals,
        fam_asset_register_rep_line_ex,
        is_inactive,
        last_modified_date,
        lease,
        line_type,
        net_book_value,
        parent_id,
        posting,
        report_parent_id,
        report_parent_zero_value_id,
        revaluation,
        sale,
        source_alt_depr_id,
        source_asset_id,
        source_asset_values_id,
        subsidiary,
        transfers,
        write_down,
        partition_date

    from source

)

select * from renamed
