
with source as (

    select * from {{ source('raw_netsuite', 'change_request_stage') }}

),

renamed as (

    select
        change_request_stage_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
