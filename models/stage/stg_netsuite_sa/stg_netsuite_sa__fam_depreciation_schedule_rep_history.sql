
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_depreciation_schedule_rep_history') }}

),

renamed as (

    select
        fam_depreciation_schedule_r_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book,
        asset_id,
        asset_life,
        asset_name,
        asset_type,
        currency,
        date_created,
        date_deleted,
        depreciation_method,
        fam_depreciation_schedule_r_ex,
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
        subsidiary,
        department_id,
        partition_date

    from source

)

select * from renamed
