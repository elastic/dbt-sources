
with source as (

    select * from {{ source('raw_netsuite_sa', 'bg_queue_instance') }}

),

renamed as (

    select
        bg_queue_instance_id,
        _fivetran_deleted,
        _fivetran_synced,
        bg_queue_instance_extid,
        date_created,
        date_deleted,
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
