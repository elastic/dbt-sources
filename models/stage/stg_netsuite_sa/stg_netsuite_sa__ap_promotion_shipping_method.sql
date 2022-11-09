
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_promotion_shipping_method') }}

),

renamed as (

    select
        ap_promotion_shipping_metho_id,
        _fivetran_deleted,
        _fivetran_synced,
        ap_promotion_shipping_metho_ex,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        method_id,
        parent_id,
        promotion_discount_id

    from source

)

select * from renamed
