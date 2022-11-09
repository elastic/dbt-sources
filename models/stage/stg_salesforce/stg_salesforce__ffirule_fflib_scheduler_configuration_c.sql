
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_fflib_scheduler_configuration_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_end_after_x_c,
        ffirule_end_date_c,
        ffirule_hourly_recurrence_interval_c,
        ffirule_monthly_fixed_date_c,
        ffirule_monthly_recur_mode_c,
        ffirule_monthly_recur_relative_date_flavor_c,
        ffirule_monthly_recur_relative_date_ordinal_c,
        ffirule_nearest_weekday_c,
        ffirule_preferred_start_time_hour_c,
        ffirule_preferred_start_time_minute_c,
        ffirule_scheduling_frequency_c,
        ffirule_start_date_c,
        ffirule_visible_fields_c,
        ffirule_weekly_recur_on_days_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
