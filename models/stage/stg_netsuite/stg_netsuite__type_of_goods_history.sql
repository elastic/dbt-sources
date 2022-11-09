
with source as (

    select * from {{ source('raw_netsuite', 'type_of_goods_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        type_of_goods_extid

    from source

)

select * from renamed
