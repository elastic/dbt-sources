
with source as (

    select * from {{ source('raw_netsuite_sa', 'contract_item') }}

),

renamed as (

    select
        contract_item_id,
        _fivetran_deleted,
        _fivetran_synced,
        bill_to_customer_id,
        contract_id,
        contract_item_amount_base_cur,
        contract_item_end_date,
        contract_item_extid,
        contract_item_order_type_id,
        contract_item_start_date,
        contract_item_term,
        contract_item_uplift,
        contract_list_rate,
        current_list_rate_contract_cu,
        customer_currency_id,
        customer_list_rate,
        customer_list_rate_base_curre,
        customer_price_level_id,
        date_created,
        date_deleted,
        end_user_id,
        historical_install_base,
        is_inactive,
        is_updated_hidden,
        item_category_id,
        item_id,
        last_modified_date,
        license_status_id,
        maintenancesupport_basis_amou,
        maximum_quantity_hidden,
        ms_pricing_option_id,
        optout_ms,
        original_discount,
        original_line_no,
        original_list_rate_base_curre,
        original_list_rate_contract_c,
        original_list_rate_w_uplift,
        original_transaction_id,
        parent_id,
        party_hidden_id,
        previous_list_rate_w_uplift,
        price_level_id,
        process,
        quantity,
        quantity_cap_hidden_id,
        renew_with_id,
        renewal_processed_on,
        renewals_exclusion,
        renewals_license_pricing_mo_id,
        tran_line_description,
        uplift_cap_basis_rate_hidden,
        uplift_cap_hidden,
        vendor_hidden_id

    from source

)

select * from renamed
