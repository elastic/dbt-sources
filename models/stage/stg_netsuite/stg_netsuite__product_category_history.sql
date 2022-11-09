
with source as (

    select * from {{ source('raw_netsuite', 'product_category_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        product_category_extid

    from source

)

select * from renamed
