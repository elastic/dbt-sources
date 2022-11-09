
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_related_content_c_history') }}

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
        sbqq_display_order_c,
        sbqq_document_name_c,
        sbqq_external_id_c,
        sbqq_opportunity_c,
        sbqq_product_c,
        sbqq_quote_c,
        sbqq_quote_template_c,
        sbqq_required_c,
        sbqq_template_section_c,
        system_modstamp

    from source

)

select * from renamed
