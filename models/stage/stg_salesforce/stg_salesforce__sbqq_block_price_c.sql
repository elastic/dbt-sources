
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_block_price_c') }}

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
        owner_id,
        sbqq_effective_date_c,
        sbqq_lower_bound_c,
        sbqq_order_product_c,
        sbqq_original_block_price_c,
        sbqq_price_book_2_c,
        sbqq_price_c,
        sbqq_product_c,
        sbqq_quote_line_c,
        sbqq_upper_bound_c,
        system_modstamp

    from source

)

select * from renamed
