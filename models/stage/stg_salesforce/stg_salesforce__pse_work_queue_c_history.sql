
with source as (

    select * from {{ source('raw_salesforce', 'pse_work_queue_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_apex_class_c,
        pse_batch_id_c,
        pse_constructor_data_c,
        pse_cron_day_parameter_c,
        pse_cron_schedule_c,
        pse_last_run_c,
        pse_next_run_c,
        pse_status_c,
        pse_status_message_c,
        pse_time_zone_offset_c,
        system_modstamp

    from source

)

select * from renamed
