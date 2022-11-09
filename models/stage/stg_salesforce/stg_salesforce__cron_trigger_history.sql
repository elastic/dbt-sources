
with source as (

    select * from {{ source('raw_salesforce', 'cron_trigger_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        cron_expression,
        cron_job_detail_id,
        end_time,
        last_modified_by_id,
        next_fire_time,
        owner_id,
        previous_fire_time,
        start_time,
        state,
        time_zone_sid_key,
        times_triggered,
        _fivetran_deleted

    from source

)

select * from renamed
