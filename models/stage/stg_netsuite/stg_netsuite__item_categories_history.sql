
with source as (

    select * from {{ source('raw_netsuite', 'item_categories_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        item_categories_extid,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
