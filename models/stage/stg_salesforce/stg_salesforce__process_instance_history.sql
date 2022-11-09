
with source as (

    select * from {{ source('raw_salesforce', 'process_instance_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        completed_date,
        created_by_id,
        created_date,
        elapsed_time_in_days,
        elapsed_time_in_hours,
        elapsed_time_in_minutes,
        is_deleted,
        last_actor_id,
        last_modified_by_id,
        last_modified_date,
        process_definition_id,
        status,
        submitted_by_id,
        system_modstamp,
        target_object_id,
        _fivetran_deleted

    from source

)

select * from renamed
