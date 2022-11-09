
with source as (

    select * from {{ source('raw_netsuite', 'item_pricing_types') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        item_pricing_types_extid,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
