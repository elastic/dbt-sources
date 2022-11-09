
with source as (

    select * from {{ source('raw_netsuite', 'change_log_origin_history') }}

),

renamed as (

    select
        change_log_origin_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
