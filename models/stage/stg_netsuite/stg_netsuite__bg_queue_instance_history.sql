
with source as (

    select * from {{ source('raw_netsuite', 'bg_queue_instance_history') }}

),

renamed as (

    select
        bg_queue_instance_extid,
        bg_queue_instance_id,
        date_created,
        deployment,
        is_inactive,
        last_modified_date,
        parent_id,
        process_instance_id,
        records_failed,
        records_processed,
        state

    from source

)

select * from renamed
