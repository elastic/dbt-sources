
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_tax_detail_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_billing_document_c,
        fferpcore_billing_document_line_item_c,
        fferpcore_country_c,
        fferpcore_jurisdiction_code_c,
        fferpcore_jurisdiction_name_c,
        fferpcore_jurisdiction_type_c,
        fferpcore_rate_c,
        fferpcore_region_c,
        fferpcore_tax_c,
        fferpcore_tax_name_c,
        fferpcore_taxable_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
