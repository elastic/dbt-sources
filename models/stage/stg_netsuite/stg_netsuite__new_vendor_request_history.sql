
with source as (

    select * from {{ source('raw_netsuite', 'new_vendor_request_history') }}

),

renamed as (

    select
        account_name,
        address,
        address_1,
        address_2,
        approval_status_id,
        bank_account_number,
        bank_account_type_id,
        bank_bic__swift_code,
        bank_city,
        bank_code,
        bank_country,
        bank_name,
        bank_routing_number,
        bic,
        china_purpose_code_id,
        cityterritory,
        comments,
        company_name,
        country,
        country_check,
        country_code,
        country_iso,
        currency_id,
        date_created,
        elastic_approval_rule_group_id,
        email,
        entity_bank_details_format,
        entity_bank_detail_type_id,
        entity_type_id,
        file_to_attach,
        iban,
        is_inactive,
        last_modified_date,
        location_id,
        new_vendor_request_extid,
        new_vendor_request_id,
        next_approver_id,
        onboarding_link,
        parent_id,
        payment_terms_id,
        phone,
        prefill,
        primary_subsidiary_id,
        processor_code,
        requestor_id,
        request_date,
        state,
        status_id,
        subsidiaryid,
        tax_id,
        token,
        vat_id,
        vendor_id,
        vendor_request_sent,
        zip_code

    from source

)

select * from renamed
