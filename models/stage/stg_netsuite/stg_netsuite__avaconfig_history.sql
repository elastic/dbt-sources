
with source as (

    select * from {{ source('raw_netsuite', 'avaconfig_history') }}

),

renamed as (

    select
        account_value,
        address_batch_processing,
        address_in_upper_case,
        auto_self_assess_on_imported_,
        avaconfig_extid,
        avaconfig_id,
        billable_time_name,
        bulk_billing,
        config_flag,
        csv_imports,
        customer_code,
        date_created,
        decimal_places,
        default_customer_taxcode,
        default_customer_to_taxable,
        default_shipping_code,
        disable_address_validation,
        disable_line_item_level_tax_c,
        disable_location_code,
        disable_tax_calculation,
        disable_tax_calculation_for_q,
        disable_tax_calculation_for_s,
        discount_mapping,
        discount_tax_code,
        enable_address_validation_fla,
        enable_address_validation_on_,
        enable_discount_mechanism,
        enable_entityuse_code,
        enable_logentries,
        enable_logging,
        enable_tax_code_mapping,
        enable_tax_on_demand,
        enable_upc_code,
        enable_use_tax_assessment,
        enable_vat_in,
        encrpyt_flag,
        expiry_date,
        gl_accounts,
        is_inactive,
        item_for_vendor_charged_tax,
        last_modified_date,
        license_key,
        override_avatax_tax_code,
        parent_id,
        password_0,
        scheduled_scripts,
        send_item_account_to_avatax,
        service_types,
        show_tax_rate,
        show_warningserrors,
        suitelets,
        tax_included,
        url,
        username,
        user_defined_1,
        user_defined_2,
        user_interfaces,
        usetax_credit_account,
        usetax_debit_account,
        use_posting_date,
        vendor_bill_approved,
        vendor_code,
        web_services,
        workflow_action_scripts,
        tax_accrual_date,
        use_invoice_address_on_return

    from source

)

select * from renamed
