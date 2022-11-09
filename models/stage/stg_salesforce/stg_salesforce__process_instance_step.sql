
with source as (

    select * from {{ source('raw_salesforce', 'process_instance_step') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        actor_id,
        comments,
        created_by_id,
        created_date,
        elapsed_time_in_days,
        elapsed_time_in_hours,
        elapsed_time_in_minutes,
        original_actor_id,
        process_instance_id,
        step_node_id,
        step_status,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
