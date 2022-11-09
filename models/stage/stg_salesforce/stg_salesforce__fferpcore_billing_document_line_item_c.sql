
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_billing_document_line_item_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_analysis_item_1_c,
        fferpcore_analysis_item_2_c,
        fferpcore_analysis_item_3_c,
        fferpcore_analysis_item_4_c,
        fferpcore_billing_document_c,
        fferpcore_billing_document_status_c,
        fferpcore_discount_total_c,
        fferpcore_line_description_c,
        fferpcore_net_value_before_discount_c,
        fferpcore_net_value_c,
        fferpcore_net_value_override_c,
        fferpcore_product_service_c,
        fferpcore_quantity_c,
        fferpcore_reporting_net_value_c,
        fferpcore_reporting_tax_value_1_c,
        fferpcore_reporting_tax_value_2_c,
        fferpcore_reporting_tax_value_3_c,
        fferpcore_reporting_tax_value_total_c,
        fferpcore_reporting_total_value_c,
        fferpcore_tax_code_1_c,
        fferpcore_tax_code_2_c,
        fferpcore_tax_code_3_c,
        fferpcore_tax_rate_1_c,
        fferpcore_tax_rate_2_c,
        fferpcore_tax_rate_3_c,
        fferpcore_tax_rate_total_c,
        fferpcore_tax_value_1_c,
        fferpcore_tax_value_2_c,
        fferpcore_tax_value_3_c,
        fferpcore_tax_value_total_c,
        fferpcore_total_value_c,
        fferpcore_unit_price_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_billing_event_item_correlation_id_c,
        system_modstamp,
        fferpcore_reporting_net_value_number_c,
        fferpcore_shipping_state_c,
        fferpcore_invalid_company_site_c,
        fferpcore_shipping_postal_code_c,
        fferpcore_shipping_city_c,
        fferpcore_account_c,
        fferpcore_shipping_street_c,
        fferpcore_company_site_c,
        fferpcore_shipping_country_c,
        fferpcore_invalid_shipping_account_c,
        fferpcore_manual_address_override_c,
        fferpcore_billing_document_external_tax_status_c

    from source

)

select * from renamed
