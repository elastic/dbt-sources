
with source as (

    select * from {{ source('raw_netsuite', 'schedule_event_type') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        schedule_event_type_extid

    from source

)

select * from renamed
