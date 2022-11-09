
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_promotion_tier_eligibility_item_map_history') }}

),

renamed as (

    select
        ap_promotion_tier_id,
        item_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed