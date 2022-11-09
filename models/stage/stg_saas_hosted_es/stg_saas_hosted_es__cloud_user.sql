
with source as (

    select * from {{ source('raw_saas_hosted_es', 'cloud_user') }}

),

renamed as (

    select
        user_id,
        first_name,
        last_name,
        email,
        company_name,
        address1,
        address2,
        address3,
        city,
        state,
        country,
        zip,
        vat,
        is_paying,
        level,
        domain,
        aws_customer_id,
        txid,
        accepted_tos,
        trials_start,
        trials_end,
        allow_arbitrary_code,
        aws_subscribed,
        wants_informational_emails,
        timestamp,
        discounts_end,
        discounts_id,
        discounts_start,
        discounts_factor,
        discounts_description,
        product_discounts,
        allow_provisioning_without_payment_established,
        last_modified,
        signup_page,
        notifications_billing,
        notifications_operational,
        invoicable,
        credit_limit,
        created,
        email_verified,
        deny_arbitrary_code,
        recurly_billing_info_last_name,
        recurly_billing_info_address1,
        recurly_billing_info_address2,
        recurly_billing_info_phone,
        recurly_billing_info_vat_number,
        recurly_billing_info_ip_address,
        recurly_billing_info_ip_address_country,
        recurly_billing_info_city,
        recurly_billing_info_first_name,
        recurly_billing_info_zip,
        recurly_billing_info_country,
        recurly_billing_info_card_type,
        recurly_billing_info_state,
        recurly_billing_info_type,
        recurly_billing_info_company,
        firmographics_country,
        firmographics_domain,
        firmographics_employees_number,
        firmographics_business,
        firmographics_state,
        azure_subscription_id

    from source

)

select * from renamed
