
with source as (

    select * from {{ source('raw_netsuite', 'salesforecast_history') }}

),

renamed as (

    select
        calculated_amount,
        date_entered,
        forecast_amount,
        forecast_date,
        forecast_id,
        high_calculated_amount,
        high_forecasted_amount,
        is_alt_sales,
        low_calculated_amount,
        low_forecasted_amount,
        manager_override,
        modified_by_id,
        pipeline_amount,
        salesrep_id,
        subsidiary,
        team_forecast

    from source

)

select * from renamed
