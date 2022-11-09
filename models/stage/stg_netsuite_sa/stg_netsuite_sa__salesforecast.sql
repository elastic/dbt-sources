
with source as (

    select * from {{ source('raw_netsuite_sa', 'salesforecast') }}

),

renamed as (

    select
        forecast_id,
        _fivetran_deleted,
        _fivetran_synced,
        calculated_amount,
        date_deleted,
        date_entered,
        forecast_amount,
        forecast_date,
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
