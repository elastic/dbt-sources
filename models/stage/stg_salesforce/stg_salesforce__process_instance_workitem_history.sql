
with source as (

    select * from {{ source('raw_salesforce', 'process_instance_workitem_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        actor_id,
        created_by_id,
        created_date,
        elapsed_time_in_days,
        elapsed_time_in_hours,
        elapsed_time_in_minutes,
        is_deleted,
        original_actor_id,
        process_instance_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
