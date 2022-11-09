
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_adjustment') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        adjusted_amount,
        adjusted_quantity,
        adjustment_note,
        created_by_id,
        created_date,
        currency_iso_code,
        forecast_category_name,
        forecasting_item_category,
        forecasting_item_id,
        forecasting_type_id,
        is_amount,
        is_quantity,
        last_modified_by_id,
        last_modified_date,
        owner_id,
        period_id,
        product_family,
        start_date,
        system_modstamp,
        territory_2_id

    from source

)

select * from renamed
