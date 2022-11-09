
with source as (

    select * from {{ source('raw_netsuite', 'ha_list') }}

),

renamed as (

    select
        date_created,
        ha_list_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed