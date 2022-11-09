
with source as (

    select * from {{ source('raw_netsuite', 'fam_asset_summary_rep_line_history') }}

),

renamed as (

    select
        accounting_book,
        additions,
        alternate_depreciation,
        asset_type_name,
        beginning_balance,
        currency_iso,
        date_created,
        disposals,
        ending_balance,
        fam_asset_summary_rep_line_ext,
        fam_asset_summary_rep_line_id,
        is_inactive,
        last_modified_date,
        line_type,
        parent_id,
        posting,
        report_parent_id,
        report_parent_zero_value_id,
        revaluations,
        sale,
        subsidiary,
        transfers

    from source

)

select * from renamed
