
with source as (

    select * from {{ source('raw_salesforce', 'holiday_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_deleted,
        _fivetran_synced,
        activity_date,
        created_by_id,
        created_date,
        description,
        end_time_in_minutes,
        id,
        is_all_day,
        is_recurrence,
        last_modified_by_id,
        last_modified_date,
        name,
        recurrence_day_of_month,
        recurrence_day_of_week_mask,
        recurrence_end_date_only,
        recurrence_instance,
        recurrence_interval,
        recurrence_month_of_year,
        recurrence_start_date,
        recurrence_type,
        start_time_in_minutes,
        system_modstamp

    from source

)

select * from renamed
