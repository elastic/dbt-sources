
with source as (

    select * from {{ source('raw_netsuite', 'spider_status') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        spider_status_extid

    from source

)

select * from renamed
