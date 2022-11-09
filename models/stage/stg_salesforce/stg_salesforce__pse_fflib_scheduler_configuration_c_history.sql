
with source as (

    select * from {{ source('raw_salesforce', 'pse_fflib_scheduler_configuration_c_history') }}

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
        owner_id,
        pse_end_after_x_c,
        pse_end_date_c,
        pse_hourly_recurrence_interval_c,
        pse_monthly_fixed_date_c,
        pse_monthly_recur_mode_c,
        pse_monthly_recur_relative_date_flavor_c,
        pse_monthly_recur_relative_date_ordinal_c,
        pse_nearest_weekday_c,
        pse_preferred_start_time_hour_c,
        pse_preferred_start_time_minute_c,
        pse_scheduling_frequency_c,
        pse_start_date_c,
        pse_visible_fields_c,
        pse_weekly_recur_on_days_c,
        system_modstamp

    from source

)

select * from renamed
