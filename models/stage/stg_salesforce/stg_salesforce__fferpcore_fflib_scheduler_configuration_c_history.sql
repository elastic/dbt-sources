
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_fflib_scheduler_configuration_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_end_after_x_c,
        fferpcore_end_date_c,
        fferpcore_hourly_recurrence_interval_c,
        fferpcore_monthly_fixed_date_c,
        fferpcore_monthly_recur_mode_c,
        fferpcore_monthly_recur_relative_date_flavor_c,
        fferpcore_monthly_recur_relative_date_ordinal_c,
        fferpcore_nearest_weekday_c,
        fferpcore_preferred_start_time_hour_c,
        fferpcore_preferred_start_time_minute_c,
        fferpcore_scheduling_frequency_c,
        fferpcore_start_date_c,
        fferpcore_visible_fields_c,
        fferpcore_weekly_recur_on_days_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
