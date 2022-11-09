
with source as (

    select * from {{ source('raw_netsuite', 'fair_value_prices_history') }}

),

renamed as (

    select
        currency_id,
        date_created,
        date_last_modified,
        end_date,
        fair_value_formula,
        fair_value_price_extid,
        fair_value_price_id,
        fair_value_range_policy,
        high_value,
        is_vsoe,
        item_id,
        item_revenue_category,
        low_value,
        start_date,
        units_type_id,
        unit_id,
        unit_price

    from source

)

select * from renamed
