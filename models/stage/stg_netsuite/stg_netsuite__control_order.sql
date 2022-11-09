
with source as (

    select * from {{ source('raw_netsuite', 'control_order') }}

),

renamed as (

    select
        control_order_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
