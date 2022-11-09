
with source as (

    select * from {{ source('raw_netsuite', 'fam_alternate_depreciation') }}

),

renamed as (

    select
        accounting_book_id,
        allow_override,
        alternate_method_id,
        annual_method_entry_id,
        asset_account_id,
        asset_life_al,
        asset_status_id,
        asset_values_id,
        convention_c_id,
        created_from,
        currency_id,
        current_cost,
        date_created,
        depreciation_account_id,
        depreciation_active_id,
        depreciation_charge_account_id,
        depreciation_end_date,
        depreciation_method_id,
        depreciation_period_id,
        depreciation_rules_id,
        depreciation_start_date,
        disposal_cost_account_id,
        fam_alternate_depreciation_ext,
        fam_alternate_depreciation_id,
        financial_year_start_id,
        fixed_rate,
        forecast_amount_fc_deprecated,
        gl_posting,
        group_depreciation,
        group_master,
        is_inactive,
        last_modified_date,
        original_cost,
        parent_asset_id,
        parent_id,
        period_convention_id,
        residual_value_percentage,
        residual_value_rv,
        revision_rules_id,
        subsidiary_id,
        write_down_account_id,
        write_off_account_id

    from source

)

select * from renamed
