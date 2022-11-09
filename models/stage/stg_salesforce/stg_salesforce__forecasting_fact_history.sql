
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_fact_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        forecast_category_name,
        forecasted_object_id,
        forecasting_item_id,
        forecasting_type_id,
        opportunity_id,
        owner_id,
        period_id,
        system_modstamp,
        territory_2_id,
        _fivetran_deleted

    from source

)

select * from renamed
