
with source as (

    select * from {{ source('raw_salesforce', 'pse_work_calendar_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_friday_end_hour_c,
        pse_friday_hours_c,
        pse_friday_start_hour_c,
        pse_monday_end_hour_c,
        pse_monday_hours_c,
        pse_monday_start_hour_c,
        pse_saturday_end_hour_c,
        pse_saturday_hours_c,
        pse_saturday_start_hour_c,
        pse_standard_hours_per_day_c,
        pse_sunday_end_hour_c,
        pse_sunday_hours_c,
        pse_sunday_start_hour_c,
        pse_thursday_end_hour_c,
        pse_thursday_hours_c,
        pse_thursday_start_hour_c,
        pse_tuesday_end_hour_c,
        pse_tuesday_hours_c,
        pse_tuesday_start_hour_c,
        pse_wednesday_end_hour_c,
        pse_wednesday_hours_c,
        pse_wednesday_start_hour_c,
        pse_week_start_day_c,
        pse_weekends_are_workdays_c,
        system_modstamp,
        pse_week_total_hours_c,
        x_18_digit_id_c

    from source

)

select * from renamed
