
with source as (

    select * from {{ source('raw_netsuite', 'fam_asset_proposal_history') }}

),

renamed as (

    select
        accounting_method_id,
        asset_account_id,
        asset_description,
        asset_id,
        asset_lifetime,
        asset_lifetime_usage,
        asset_type_id,
        class_id,
        created_from,
        currency,
        currency_id,
        custodian_id,
        date_created,
        department_id,
        depreciation_account_id,
        depreciation_active_id,
        depreciation_charge_account_id,
        depreciation_method_1_id,
        depreciation_method_2_id,
        depreciation_method_3_id,
        depreciation_method_4_id,
        depreciation_method_5_id,
        depreciation_method_6_id,
        depreciation_method_7_id,
        depreciation_method_8_id,
        depreciation_method_9_id,
        depreciation_period_id,
        depreciation_rules_id,
        depreciation_start_date,
        disposal_cost_account_id,
        disposal_item_id,
        employee_id,
        fam_asset_proposal_extid,
        fam_asset_proposal_id,
        financial_year_start_id,
        fixed_rate,
        include_in_reports,
        inspection_interval,
        inspection_required,
        is_inactive,
        last_modified_date,
        lifetime_1,
        lifetime_2,
        lifetime_3,
        lifetime_4,
        lifetime_5,
        lifetime_6,
        lifetime_7,
        lifetime_8,
        lifetime_9,
        location_id,
        original_cost,
        parent_id,
        parent_proposal_id,
        project_id,
        proposal_status_id,
        purchase_date,
        purchase_order_id,
        quantity,
        residual_value,
        residual_value_1,
        residual_value_2,
        residual_value_3,
        residual_value_4,
        residual_value_5,
        residual_value_6,
        residual_value_7,
        residual_value_8,
        residual_value_9,
        residual_value_percentage,
        residual_value_percentage_1,
        residual_value_percentage_2,
        residual_value_percentage_3,
        residual_value_percentage_4,
        residual_value_percentage_5,
        residual_value_percentage_6,
        residual_value_percentage_7,
        residual_value_percentage_8,
        residual_value_percentage_9,
        revision_rules_id,
        source_transaction_id,
        source_transaction_line,
        store_history,
        subsidiary_id,
        supplier,
        warranty,
        warranty_period,
        write_down_account_id,
        write_off_account_id,
        proposal_is_leased

    from source

)

select * from renamed