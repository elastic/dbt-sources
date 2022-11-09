
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_forecast_schedule_definition_line_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_definition_number_c,
        ffrr_forecast_schedule_definition_c,
        ffrr_percent_split_c,
        ffrr_period_number_c,
        ffrr_split_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
