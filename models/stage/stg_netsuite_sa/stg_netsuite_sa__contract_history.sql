
with source as (

    select * from {{ source('raw_netsuite_sa', 'contract_history') }}

),

renamed as (

    select
        contract_id,
        _fivetran_deleted,
        _fivetran_synced,
        annual_contract_value__gross_,
        annual_contract_value__gross_0,
        annual_contract_value__gross_1,
        annual_contract_value__grossc,
        annual_contract_value__net_c_0,
        annual_contract_value__net_cl,
        annual_contract_value__net_ol,
        annual_contract_value__netclr,
        annual_renew_value_gross,
        annual_renew_value_net,
        bill_to_customer_id,
        bill_to_tier_id,
        contract_days_before_renewal,
        contract_document,
        contract_end_date,
        contract_extid,
        contract_name,
        contract_renewed_on,
        contract_start_date,
        contract_type_id,
        contract_uplift,
        contract_value_clr2_base_curr,
        contract_value_clr2_contract_,
        contract_value_clr2custom_bas,
        contract_value_clr2custom_con,
        contract_value_clr_base_curre,
        contract_value_clr_contract_c,
        contract_value_olr_base_curre,
        contract_value_olr_contract_c,
        currency_id,
        date_created,
        date_deleted,
        days_before_renewal_hidden_id,
        distributor_id,
        earliest_contract_item_start_,
        end_user_id,
        is_inactive,
        is_updated_hidden,
        last_modified_date,
        original_contract_id,
        original_sales_order_id,
        parent_id,
        queued_for_renewal,
        renewal_opportunity_id,
        renewal_term_renew_value_gros,
        renewal_term_renew_value_net,
        renewal_terms,
        renewal_transaction_id,
        renewals_exclusion,
        renewals_license_pricing_mo_id,
        reseller_id,
        ship_to_tier_id,
        status_id,
        subsidiary_id,
        partition_date

    from source

)

select * from renamed
