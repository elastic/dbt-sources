
with source as (

    select * from {{ source('raw_netsuite', 'ep_process') }}

),

renamed as (

    select
        date_created,
        ep_process_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
