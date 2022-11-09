
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_fflib_scheduler_configuration_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_end_after_x_c,
        ffrr_end_date_c,
        ffrr_hourly_recurrence_interval_c,
        ffrr_monthly_fixed_date_c,
        ffrr_monthly_recur_mode_c,
        ffrr_monthly_recur_relative_date_flavor_c,
        ffrr_monthly_recur_relative_date_ordinal_c,
        ffrr_nearest_weekday_c,
        ffrr_preferred_start_time_hour_c,
        ffrr_preferred_start_time_minute_c,
        ffrr_scheduling_frequency_c,
        ffrr_start_date_c,
        ffrr_visible_fields_c,
        ffrr_weekly_recur_on_days_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
