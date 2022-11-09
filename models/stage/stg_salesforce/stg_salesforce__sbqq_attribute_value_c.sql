
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_attribute_value_c') }}

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
        sbqq_asset_c,
        sbqq_attribute_c,
        sbqq_favorite_product_c,
        sbqq_order_item_c,
        sbqq_quote_line_c,
        sbqq_subscription_c,
        sbqq_value_c,
        sbqq_value_date_c,
        sbqq_value_date_time_c,
        sbqq_value_number_c,
        system_modstamp

    from source

)

select * from renamed
