
with source as (

    select * from {{ source('raw_netsuite_sa', 'order_event_line_history') }}

),

renamed as (

    select
        order_event_line_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        order_event_id,
        order_event_line_amount,
        order_event_line_extid,
        order_event_line_quantity,
        order_line_unique_key,
        parent_id,
        partition_date

    from source

)

select * from renamed
