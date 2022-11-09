
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_localization_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_apiname_c,
        sbqq_description_c,
        sbqq_label_c,
        sbqq_language_c,
        sbqq_line_column_c,
        sbqq_long_text_area_c,
        sbqq_price_dimension_c,
        sbqq_product_c,
        sbqq_product_feature_c,
        sbqq_product_option_c,
        sbqq_quote_template_c,
        sbqq_quote_term_c,
        sbqq_rich_text_area_c,
        sbqq_template_content_c,
        sbqq_text_area_c,
        sbqq_text_c,
        sbqq_user_defined_c,
        system_modstamp

    from source

)

select * from renamed
