
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_asset') }}

),

renamed as (

    select
        fam_asset_id,
        _fivetran_deleted,
        _fivetran_synced,
        acquisition_deprecated,
        alternate_asset_number,
        annual_method_entry_id,
        asset_account_id,
        asset_current_cost,
        asset_description,
        asset_is_leased,
        asset_lifetime,
        asset_lifetime_usage,
        asset_original_cost,
        asset_serial_number,
        asset_status_id,
        asset_type_id,
        asset_values_id,
        averaging_convention_id,
        balloon_payment_amount,
        class_id,
        component_of_id,
        create_from,
        custodian_id,
        customer_id,
        customer_location_id,
        date_created,
        date_deleted,
        date_of_manufacture,
        department_id,
        depreciation_account_id,
        depreciation_active_id,
        depreciation_charge_account_id,
        depreciation_end_date,
        depreciation_method_id,
        depreciation_period_id,
        depreciation_rules_id,
        depreciation_start_date,
        disposal_cost_account_id,
        disposal_date,
        disposal_item_id,
        disposal_type_id,
        fam_asset_extid,
        fam_asset_name,
        fam_asset_number,
        finance_lease_hp,
        financial_year_start_id,
        first_payment_due_date,
        fixed_rate,
        include_in_reports,
        initial_lease_cost,
        inspection_interval,
        inspection_required,
        insurance_company_id,
        insurance_policy_number,
        insurance_value,
        interest_rate,
        is_compound,
        is_inactive,
        last_inspection_date,
        last_modified_date,
        last_payment_due_date,
        lease_company_id,
        lease_contract_number,
        lease_end_date,
        lease_start_date,
        location_id,
        maintenance_company_id,
        maintenance_contract,
        manufacturer,
        next_inspection_date,
        parent_asset_id,
        parent_id,
        parent_transaction_id,
        parent_transaction_line,
        payment_amount,
        payment_frequency,
        period_convention_id,
        physical_location,
        policy_end_date,
        policy_start_date,
        project_id,
        proposal_id,
        purchase_date,
        purchase_order_id,
        quantity,
        quantity_disposed,
        rental_amount,
        rental_frequency,
        repair__maint_subcategory_a_id,
        repair__maint_subcategory_b_id,
        repair__maintenance_categor_id,
        residual_value,
        residual_value_percentage,
        revision_rules_id,
        sales_amount,
        sales_invoice_id,
        store_history,
        subsidiary_id,
        supplier,
        target_depreciation_date,
        warranty,
        warranty_end_date,
        warranty_period,
        warranty_start_date,
        write_down_account_id,
        write_off_account_id

    from source

)

select * from renamed
