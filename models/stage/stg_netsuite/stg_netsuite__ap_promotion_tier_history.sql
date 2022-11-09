
with source as (

    select * from {{ source('raw_netsuite', 'ap_promotion_tier_history') }}

),

renamed as (

    select
        ap_promotion_tier_extid,
        ap_promotion_tier_id,
        apply_discount_on_highest_val,
        date_created,
        discount_description,
        discount_exclude_items,
        discount_item_add_type,
        discount_label,
        discount_limit_amount,
        discount_limit_currency_id,
        discount_offer_amount,
        discount_offer_currency_id,
        discount_saved_search_id,
        discount_type,
        eligibility_amount,
        eligibility_currency_id,
        eligibility_description,
        eligibility_label,
        eligibility_saved_search_id,
        eligibility_type,
        is_inactive,
        last_modified_date,
        parent_id,
        promotion_code_id,
        rule_id,
        tier_id

    from source

)

select * from renamed
