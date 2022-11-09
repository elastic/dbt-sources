
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_promotional_offer_history') }}

),

renamed as (

    select
        ap_promotional_offer_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount,
        ap_promotional_offer_extid,
        currency_id,
        date_created,
        date_deleted,
        is_inactive,
        is_percent,
        is_unit,
        last_modified_date,
        limit_0,
        parent_id,
        promotion_discount_id,
        partition_date

    from source

)

select * from renamed
