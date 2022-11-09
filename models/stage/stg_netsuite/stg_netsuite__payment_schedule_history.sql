
with source as (

    select * from {{ source('raw_netsuite', 'payment_schedule_history') }}

),

renamed as (

    select
        daily_option,
        date_created,
        day_of_month,
        day_of_week_id,
        event_type_id,
        is_inactive,
        last_modified_date,
        monthly_option,
        next_scheduled_date,
        number_of_days,
        number_of_weeks,
        parent_id,
        payment_schedule_extid,
        payment_schedule_id,
        payment_schedule_name,
        recurrence_id,
        schedule_type_id,
        start_time,
        time_zone_id,
        week_of_month_id

    from source

)

select * from renamed
