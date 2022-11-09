
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_promotion_discount_item_map') }}

),

renamed as (

    select
        ap_promotion_discount_id,
        item_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
