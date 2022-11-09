
with source as (

    select * from {{ source('raw_netsuite', 'product_family') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        product_family_extid

    from source

)

select * from renamed
