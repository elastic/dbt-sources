
with source as (

    select * from {{ source('raw_netsuite', 'ap_promotion_discount') }}

),

renamed as (

    select
        ap_promotion_discount_extid,
        ap_promotion_discount_id,
        apply_discount_on_highest_val,
        date_created,
        description,
        exclude_items,
        is_inactive,
        item_add_type,
        label,
        last_modified_date,
        parent_id,
        promotion_code_id,
        saved_search_id,
        type_0

    from source

)

select * from renamed
