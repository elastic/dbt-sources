
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_curve_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_lag_c,
        pse_max_forecast_period_c,
        pse_total_curve_period_c,
        system_modstamp

    from source

)

select * from renamed
