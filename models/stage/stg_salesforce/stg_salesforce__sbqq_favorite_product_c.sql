
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_favorite_product_c') }}

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
        sbqq_configuration_attributes_c,
        sbqq_discount_schedule_c,
        sbqq_dynamic_option_id_c,
        sbqq_favorite_c,
        sbqq_product_c,
        sbqq_product_option_c,
        sbqq_quantity_c,
        sbqq_required_by_c,
        system_modstamp

    from source

)

select * from renamed
