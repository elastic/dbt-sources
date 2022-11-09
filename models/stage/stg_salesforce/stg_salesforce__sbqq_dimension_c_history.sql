
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_dimension_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        sbqq_cost_editable_c,
        sbqq_default_quantity_c,
        sbqq_discount_schedule_c,
        sbqq_non_discountable_c,
        sbqq_non_partner_discountable_c,
        sbqq_price_book_c,
        sbqq_price_editable_c,
        sbqq_product_c,
        sbqq_quantity_editable_c,
        sbqq_quantity_scale_c,
        sbqq_taxable_c,
        sbqq_term_discount_schedule_c,
        sbqq_type_c,
        sbqq_unit_price_c,
        system_modstamp

    from source

)

select * from renamed
