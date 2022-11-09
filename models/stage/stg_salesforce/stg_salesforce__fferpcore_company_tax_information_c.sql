
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_company_tax_information_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_tax_code_c,
        fferpcore_tax_country_code_c,
        fferpcore_tax_type_c,
        fferpcore_vat_gst_group_c,
        fferpcore_vat_registration_number_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        fferpcore_tax_engine_c

    from source

)

select * from renamed
