
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_owner_adjustment') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        forecast_category_name,
        forecast_owner_id,
        forecasting_item_category,
        forecasting_item_id,
        forecasting_type_id,
        is_amount,
        is_deleted,
        is_quantity,
        last_modified_by_id,
        last_modified_date,
        owner_adjusted_amount,
        owner_adjusted_quantity,
        owner_adjustment_note,
        period_id,
        product_family,
        start_date,
        system_modstamp,
        territory_2_id

    from source

)

select * from renamed
