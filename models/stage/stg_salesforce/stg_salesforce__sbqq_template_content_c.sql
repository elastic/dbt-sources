
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_template_content_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_custom_source_c,
        sbqq_font_family_c,
        sbqq_font_size_c,
        sbqq_markup_c,
        sbqq_raw_markup_c,
        sbqq_table_style_c,
        sbqq_text_color_c,
        sbqq_type_c,
        system_modstamp

    from source

)

select * from renamed
