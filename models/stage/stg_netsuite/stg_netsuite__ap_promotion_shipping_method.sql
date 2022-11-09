
with source as (

    select * from {{ source('raw_netsuite', 'ap_promotion_shipping_method') }}

),

renamed as (

    select
        ap_promotion_shipping_metho_ex,
        ap_promotion_shipping_metho_id,
        date_created,
        is_inactive,
        last_modified_date,
        method_id,
        parent_id,
        promotion_discount_id

    from source

)

select * from renamed
