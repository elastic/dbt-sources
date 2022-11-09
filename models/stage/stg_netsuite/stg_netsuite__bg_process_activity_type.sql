
with source as (

    select * from {{ source('raw_netsuite', 'bg_process_activity_type') }}

),

renamed as (

    select
        bg_process_activity_type_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed