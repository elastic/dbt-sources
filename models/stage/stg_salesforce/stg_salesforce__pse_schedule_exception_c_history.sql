
with source as (

    select * from {{ source('raw_salesforce', 'pse_schedule_exception_c_history') }}

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
        pse_end_date_c,
        pse_exception_hours_c,
        pse_friday_end_time_c,
        pse_friday_hours_c,
        pse_friday_start_time_c,
        pse_monday_end_time_c,
        pse_monday_hours_c,
        pse_monday_start_time_c,
        pse_saturday_end_time_c,
        pse_saturday_hours_c,
        pse_saturday_start_time_c,
        pse_schedule_c,
        pse_sunday_end_time_c,
        pse_sunday_hours_c,
        pse_sunday_start_time_c,
        pse_thursday_end_time_c,
        pse_thursday_hours_c,
        pse_thursday_start_time_c,
        pse_tuesday_end_time_c,
        pse_tuesday_hours_c,
        pse_tuesday_start_time_c,
        pse_wednesday_end_time_c,
        pse_wednesday_hours_c,
        pse_wednesday_start_time_c,
        system_modstamp

    from source

)

select * from renamed
