
with source as (

    select * from {{ source('raw_netsuite', 'ap_promotion_discount_shipping_methods_map_history') }}

),

renamed as (

    select
        ap_promotion_discount_id,
        shipping_method_id

    from source

)

select * from renamed
