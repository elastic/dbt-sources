
with source as (

    select * from {{ source('raw_netsuite_sa', 'format_details_history') }}

),

renamed as (

    select
        format_details_id,
        _fivetran_deleted,
        _fivetran_synced,
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
        date_deleted,
        format_details_extid,
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
        zip,
        is_account_number_encrypted,
        partition_date

    from source

)

select * from renamed
