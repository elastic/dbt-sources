
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_company_credit_terms_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_base_date_1_c,
        fferpcore_base_date_2_c,
        fferpcore_base_date_3_c,
        fferpcore_base_date_4_c,
        fferpcore_company_c,
        fferpcore_days_offset_1_c,
        fferpcore_days_offset_2_c,
        fferpcore_days_offset_3_c,
        fferpcore_days_offset_4_c,
        fferpcore_description_1_c,
        fferpcore_description_2_c,
        fferpcore_description_3_c,
        fferpcore_description_4_c,
        fferpcore_discount_1_c,
        fferpcore_discount_2_c,
        fferpcore_discount_3_c,
        fferpcore_discount_4_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
