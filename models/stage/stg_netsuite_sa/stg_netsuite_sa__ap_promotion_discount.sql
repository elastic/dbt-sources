
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_promotion_discount') }}

),

renamed as (

    select
        ap_promotion_discount_id,
        _fivetran_deleted,
        _fivetran_synced,
        ap_promotion_discount_extid,
        apply_discount_on_highest_val,
        date_created,
        date_deleted,
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
