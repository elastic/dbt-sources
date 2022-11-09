
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_web_quote_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_account_c,
        sbqq_additional_discount_amount_c,
        sbqq_average_customer_discount_c,
        sbqq_average_partner_discount_c,
        sbqq_batch_quantity_c,
        sbqq_billing_city_c,
        sbqq_billing_country_c,
        sbqq_billing_name_c,
        sbqq_billing_postal_code_c,
        sbqq_billing_state_c,
        sbqq_billing_street_c,
        sbqq_customer_amount_c,
        sbqq_customer_discount_c,
        sbqq_days_quote_open_c,
        sbqq_default_template_c,
        sbqq_delivery_method_c,
        sbqq_distributor_discount_c,
        sbqq_document_id_c,
        sbqq_email_template_id_c,
        sbqq_end_date_c,
        sbqq_expiration_date_c,
        sbqq_first_segment_term_end_date_c,
        sbqq_introduction_c,
        sbqq_line_item_count_c,
        sbqq_list_amount_c,
        sbqq_markup_rate_c,
        sbqq_master_contract_c,
        sbqq_net_amount_c,
        sbqq_notes_c,
        sbqq_opportunity_c,
        sbqq_original_quote_c,
        sbqq_partner_discount_c,
        sbqq_payment_terms_c,
        sbqq_price_book_c,
        sbqq_pricebook_id_c,
        sbqq_primary_contact_c,
        sbqq_quote_process_id_c,
        sbqq_quote_template_id_c,
        sbqq_regular_amount_c,
        sbqq_sales_rep_c,
        sbqq_self_serviced_c,
        sbqq_shipping_city_c,
        sbqq_shipping_country_c,
        sbqq_shipping_name_c,
        sbqq_shipping_postal_code_c,
        sbqq_shipping_state_c,
        sbqq_shipping_street_c,
        sbqq_signature_status_c,
        sbqq_start_date_c,
        sbqq_status_c,
        sbqq_subscription_term_c,
        sbqq_target_customer_amount_c,
        sbqq_total_customer_discount_amount_c,
        sbqq_type_c,
        sbqq_watermark_shown_c,
        system_modstamp

    from source

)

select * from renamed
