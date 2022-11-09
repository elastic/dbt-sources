
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_company_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_city_c,
        fferpcore_code_c,
        fferpcore_correlation_id_c,
        fferpcore_country_c,
        fferpcore_email_c,
        fferpcore_fax_c,
        fferpcore_is_address_validated_c,
        fferpcore_logo_c,
        fferpcore_logo_url_c,
        fferpcore_phone_c,
        fferpcore_state_c,
        fferpcore_street_c,
        fferpcore_tax_information_c,
        fferpcore_uniqueness_constraint_c,
        fferpcore_validated_city_c,
        fferpcore_validated_country_c,
        fferpcore_validated_state_c,
        fferpcore_validated_street_c,
        fferpcore_validated_zip_c,
        fferpcore_website_c,
        fferpcore_zip_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
