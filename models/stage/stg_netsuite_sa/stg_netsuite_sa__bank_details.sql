
with source as (

    select * from {{ source('raw_netsuite_sa', 'bank_details') }}

),

renamed as (

    select
        bank_details_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_type_id,
        address1,
        address2,
        address3,
        baby_bonus,
        bank_account_name,
        bank_account_number,
        bank_account_payment_descript,
        bank_account_suffix,
        bank_account_type_id,
        bank_code,
        bank_details_extid,
        bank_details_name,
        bank_fee_code_id,
        bank_name,
        bank_number,
        bban,
        bic,
        billing_sequence_type_id,
        branch_name,
        branch_number,
        child_id,
        city,
        company_id,
        country_check,
        country_code,
        country_id,
        customer_code,
        date_created,
        date_deleted,
        date_of_reference_mandate,
        edi,
        edi_value,
        final_payment_date,
        first_payment_date,
        iban,
        iban_check_digits,
        is_inactive,
        issuer_number,
        last_modified_date,
        number_of_payments_made,
        parent_customer__refund_id,
        parent_customer_id,
        parent_employee_id,
        parent_id,
        parent_partner_id,
        parent_vendor_id,
        payment_file_format_id,
        processor_code,
        reference_0,
        reference_amended_id,
        signature,
        stateprovince,
        swift_code,
        type_id,
        zip

    from source

)

select * from renamed
