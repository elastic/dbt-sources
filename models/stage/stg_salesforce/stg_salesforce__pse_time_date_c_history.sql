
with source as (

    select * from {{ source('raw_salesforce', 'pse_time_date_c_history') }}

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
        name,
        pse_date_c,
        pse_hours_c,
        pse_timecard_c,
        system_modstamp,
        pse_day_of_week_c

    from source

)

select * from renamed
