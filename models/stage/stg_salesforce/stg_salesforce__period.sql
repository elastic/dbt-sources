
with source as (

    select * from {{ source('raw_salesforce', 'period') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        end_date,
        fiscal_year_settings_id,
        fully_qualified_label,
        is_forecast_period,
        number,
        period_label,
        quarter_label,
        start_date,
        system_modstamp,
        type

    from source

)

select * from renamed
