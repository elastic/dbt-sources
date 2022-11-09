
with source as (

    select * from {{ source('raw_netsuite_sa', 'order_event') }}

),

renamed as (

    select
        order_event_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        order_event_date,
        order_event_extid,
        order_id,
        parent_id,
        status_id,
        type_id

    from source

)

select * from renamed
