
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_tax_exemption_certificate_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        sbqq_account_c,
        sbqq_active_c,
        sbqq_certificate_number_c,
        sbqq_country_c,
        sbqq_county_c,
        sbqq_date_issued_c,
        sbqq_default_c,
        sbqq_exempt_company_name_c,
        sbqq_expiration_date_c,
        sbqq_issuing_authority_c,
        sbqq_notes_c,
        sbqq_postal_code_c,
        sbqq_state_c,
        sbqq_street_address_2_c,
        sbqq_street_address_c,
        system_modstamp

    from source

)

select * from renamed
