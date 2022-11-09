
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_company_site_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_city_c,
        fferpcore_company_c,
        fferpcore_country_c,
        fferpcore_is_address_validated_c,
        fferpcore_postal_code_c,
        fferpcore_state_c,
        fferpcore_street_c,
        fferpcore_validated_city_c,
        fferpcore_validated_country_c,
        fferpcore_validated_postal_code_c,
        fferpcore_validated_state_c,
        fferpcore_validated_street_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
