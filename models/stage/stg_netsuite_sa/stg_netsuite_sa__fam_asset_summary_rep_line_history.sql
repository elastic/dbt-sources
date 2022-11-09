
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_asset_summary_rep_line_history') }}

),

renamed as (

    select
        fam_asset_summary_rep_line_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book,
        additions,
        alternate_depreciation,
        asset_type_name,
        beginning_balance,
        currency_iso,
        date_created,
        date_deleted,
        disposals,
        ending_balance,
        fam_asset_summary_rep_line_ext,
        is_inactive,
        last_modified_date,
        leases,
        line_type,
        parent_id,
        posting,
        report_parent_id,
        report_parent_zero_value_id,
        revaluations,
        sale,
        subsidiary,
        transfers,
        partition_date

    from source

)

select * from renamed
