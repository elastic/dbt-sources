
with source as (

    select * from {{ source('raw_salesforce', 'quote_line_item') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        discount,
        do_not_calculate_price_c,
        end_date_c,
        has_quantity_schedule,
        has_revenue_schedule,
        has_schedule,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        line_number,
        list_price,
        location_c,
        opportunity_line_item_id,
        pricebook_entry_id,
        product_2_id,
        quantity,
        quote_id,
        service_date,
        sort_order,
        start_date_c,
        subtotal,
        system_modstamp,
        total_price,
        unit_price,
        custom_terms_in_months_c,
        year_index_c,
        last_referenced_date,
        last_viewed_date

    from source

)

select * from renamed
