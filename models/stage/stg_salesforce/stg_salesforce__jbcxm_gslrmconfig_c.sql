
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gslrmconfig_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_booking_type_line_item_mapping_c,
        jbcxm_connector_config_c,
        jbcxm_product_enable_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed