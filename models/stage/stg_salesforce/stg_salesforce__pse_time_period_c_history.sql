
with source as (

    select * from {{ source('raw_salesforce', 'pse_time_period_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        pse_end_date_c,
        pse_start_date_c,
        pse_type_c,
        system_modstamp,
        pse_closed_for_forecasting_c

    from source

)

select * from renamed
