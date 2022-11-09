
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_promotion_tier') }}

),

renamed as (

    select
        ap_promotion_tier_id,
        _fivetran_deleted,
        _fivetran_synced,
        ap_promotion_tier_extid,
        apply_discount_on_highest_val,
        date_created,
        date_deleted,
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
