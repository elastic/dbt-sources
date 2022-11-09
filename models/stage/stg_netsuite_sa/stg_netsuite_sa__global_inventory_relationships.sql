
with source as (

    select * from {{ source('raw_netsuite_sa', 'global_inventory_relationships') }}

),

renamed as (

    select
        global_invt_relationship_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        date_last_modified,
        global_invt_relationship_extid,
        inventory_subsidiary_id,
        is_all_locations_cust_return,
        is_all_locations_fulfillment,
        is_allow_cross_sub_cust_return,
        is_allow_cross_sub_fulfillment,
        is_inactive,
        originating_subsidiary_id,
        is_allow_cross_sub_receipt,
        is_all_locations_vend_return,
        is_allow_cross_sub_vend_return,
        is_all_locations_receipt

    from source

)

select * from renamed
