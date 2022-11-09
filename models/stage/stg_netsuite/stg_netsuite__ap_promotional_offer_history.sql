
with source as (

    select * from {{ source('raw_netsuite', 'ap_promotional_offer_history') }}

),

renamed as (

    select
        amount,
        ap_promotional_offer_extid,
        ap_promotional_offer_id,
        currency_id,
        date_created,
        is_inactive,
        is_percent,
        is_unit,
        last_modified_date,
        limit_0,
        parent_id,
        promotion_discount_id

    from source

)

select * from renamed
