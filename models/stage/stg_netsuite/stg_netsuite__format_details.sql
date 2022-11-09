
with source as (

    select * from {{ source('raw_netsuite', 'format_details') }}

),

renamed as (

    select
        account_number,
        account_type_id,
        add_pad_blocks,
        address1,
        address2,
        address3,
        bank_account_type_id,
        bank_code,
        bank_company_id,
        bank_name,
        bank_number,
        bank_suffix,
        bban,
        bic,
        branch_name,
        branch_number,
        center_codelocation,
        city,
        country_check,
        country_code,
        country_id,
        date_created,
        format_details_extid,
        format_details_id,
        iban,
        iban_check_digits,
        insert_balancing_line,
        is_inactive,
        issuer_number,
        last_modified_date,
        option_field,
        parent_id,
        processor_code,
        statement_name,
        stateprovince,
        tax_authorization_date,
        tax_authorization_number,
        tax_province,
        zip

    from source

)

select * from renamed
