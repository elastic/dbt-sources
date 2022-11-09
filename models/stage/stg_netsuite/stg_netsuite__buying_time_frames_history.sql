
with source as (

    select * from {{ source('raw_netsuite', 'buying_time_frames_history') }}

),

renamed as (

    select
        buying_time_frames_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
