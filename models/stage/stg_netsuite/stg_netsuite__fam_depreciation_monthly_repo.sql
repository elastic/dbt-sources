
with source as (

    select * from {{ source('raw_netsuite', 'fam_depreciation_monthly_repo') }}

),

renamed as (

    select
        accounting_book,
        alternate_depreciation,
        asset_id,
        asset_name,
        currency,
        date_0,
        date_created,
        depreciation_amount,
        fam_depreciation_monthly_re_ex,
        fam_depreciation_monthly_re_id,
        fam_depreciation_monthly_re_na,
        is_inactive,
        last_modified_date,
        parent_id,
        posting_reference,
        report_parent_id,
        report_parent_zero_value_id,
        source_alt_depr_id,
        source_asset_id,
        source_asset_values_id,
        subsidiary

    from source

)

select * from renamed
