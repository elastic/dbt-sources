
with source as (

    select * from {{ source('raw_netsuite_sa', 'fair_value_prices_history') }}

),

renamed as (

    select
        fair_value_price_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        currency_id,
        date_created,
        date_deleted,
        date_last_modified,
        end_date,
        fair_value_formula,
        fair_value_price_extid,
        fair_value_range_policy,
        high_value,
        is_vsoe,
        item_id,
        item_revenue_category,
        low_value,
        start_date,
        unit_id,
        unit_price,
        units_type_id,
        partition_date

    from source

)

select * from renamed
