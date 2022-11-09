
with source as (

    select * from {{ source('raw_netsuite', 'product_family__v2_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        product_family__v2_extid

    from source

)

select * from renamed
