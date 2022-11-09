
with source as (

    select * from {{ source('raw_netsuite', 'ap_promotion_discount_item_map_history') }}

),

renamed as (

    select
        ap_promotion_discount_id,
        item_id

    from source

)

select * from renamed
