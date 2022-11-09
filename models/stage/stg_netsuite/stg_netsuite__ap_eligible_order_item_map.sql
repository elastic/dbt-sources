
with source as (

    select * from {{ source('raw_netsuite', 'ap_eligible_order_item_map') }}

),

renamed as (

    select
        ap_eligible_order_id,
        item_id

    from source

)

select * from renamed
