
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_curve_detail_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_forecast_curve_c,
        pse_percent_burndown_c,
        pse_period_c,
        pse_sequence_c,
        system_modstamp

    from source

)

select * from renamed
