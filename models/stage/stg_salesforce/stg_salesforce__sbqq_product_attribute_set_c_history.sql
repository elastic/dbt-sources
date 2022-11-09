
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_product_attribute_set_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        sbqq_attribute_set_c,
        sbqq_configured_sku_c,
        sbqq_product_name_c,
        sbqq_product_option_c,
        sbqq_product_option_name_c,
        sbqq_sequence_c,
        system_modstamp

    from source

)

select * from renamed
