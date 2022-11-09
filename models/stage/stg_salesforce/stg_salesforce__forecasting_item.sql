
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_item') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount_without_adjustments,
        amount_without_manager_adjustment,
        amount_without_owner_adjustment,
        currency_iso_code,
        forecast_amount,
        forecast_category_name,
        forecast_quantity,
        forecasting_item_category,
        forecasting_type_id,
        has_adjustment,
        has_owner_adjustment,
        is_amount,
        is_quantity,
        is_up_to_date,
        owner_id,
        owner_only_amount,
        owner_only_quantity,
        parent_forecasting_item_id,
        period_id,
        product_family,
        quantity_without_adjustments,
        quantity_without_manager_adjustment,
        quantity_without_owner_adjustment,
        subordinate_overrides,
        system_modstamp,
        territory_2_id,
        _fivetran_deleted

    from source

)

select * from renamed
