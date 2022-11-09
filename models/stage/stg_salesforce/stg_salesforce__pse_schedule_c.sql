
with source as (

    select * from {{ source('raw_salesforce', 'pse_schedule_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        external_id_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_action_force_schedule_refresh_c,
        pse_action_update_future_scheduled_hours_c,
        pse_end_date_c,
        pse_friday_end_time_c,
        pse_friday_hours_c,
        pse_friday_start_time_c,
        pse_future_scheduled_hours_c,
        pse_future_scheduled_hours_last_updated_c,
        pse_is_blocking_c,
        pse_monday_end_time_c,
        pse_monday_hours_c,
        pse_monday_start_time_c,
        pse_saturday_end_time_c,
        pse_saturday_hours_c,
        pse_saturday_start_time_c,
        pse_scheduled_days_c,
        pse_scheduled_hours_c,
        pse_start_date_c,
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
        system_modstamp,
        pse_week_total_hours_c

    from source

)

select * from renamed
