
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_forecast_schedule_definition_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_description_c,
        ffrr_number_of_periods_c,
        ffrr_starts_on_c,
        ffrr_total_split_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
