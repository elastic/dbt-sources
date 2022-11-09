
with source as (

    select * from {{ source('raw_netsuite', 'fam_asset_register_rep_line_history') }}

),

renamed as (

    select
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
        depreciation,
        depreciation_start_date,
        disposals,
        fam_asset_register_rep_line_ex,
        fam_asset_register_rep_line_id,
        is_inactive,
        last_modified_date,
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
        subsidiary,
        transfers,
        write_down,
        source_asset_values_id

    from source

)

select * from renamed
