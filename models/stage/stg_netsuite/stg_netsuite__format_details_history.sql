
with source as (

    select * from {{ source('raw_netsuite', 'format_details_history') }}

),

renamed as (

    select
        account_number,
        account_type_id,
        address1,
        address2,
        address3,
        add_pad_blocks,
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
        issuer_number,
        is_inactive,
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
