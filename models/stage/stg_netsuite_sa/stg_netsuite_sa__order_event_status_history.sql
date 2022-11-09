
with source as (

    select * from {{ source('raw_netsuite_sa', 'order_event_status_history') }}

),

renamed as (

    select
        order_event_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        order_event_status_extid,
        order_event_status_name,
        parent_id,
        partition_date

    from source

)

select * from renamed
