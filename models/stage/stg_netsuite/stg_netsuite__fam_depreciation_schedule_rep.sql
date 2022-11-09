
with source as (

    select * from {{ source('raw_netsuite', 'fam_depreciation_schedule_rep') }}

),

renamed as (

    select
        accounting_book,
        asset_id,
        asset_life,
        asset_name,
        asset_type,
        currency,
        date_created,
        depreciation_method,
        fam_depreciation_schedule_r_ex,
        fam_depreciation_schedule_r_id,
        fiscal_year,
        is_inactive,
        last_modified_date,
        parent_id,
        period_1,
        period_10,
        period_11,
        period_12,
        period_2,
        period_3,
        period_4,
        period_5,
        period_6,
        period_7,
        period_8,
        period_9,
        posting,
        report_parent_id,
        source_alt_depr_id,
        source_asset_id,
        source_asset_values_id,
        subsidiary

    from source

)

select * from renamed
