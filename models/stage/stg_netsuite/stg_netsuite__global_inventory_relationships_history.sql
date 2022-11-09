
with source as (

    select * from {{ source('raw_netsuite', 'global_inventory_relationships_history') }}

),

renamed as (

    select
        date_created,
        date_last_modified,
        global_invt_relationship_extid,
        global_invt_relationship_id,
        inventory_subsidiary_id,
        is_allow_cross_sub_cust_return,
        is_allow_cross_sub_fulfillment,
        is_all_locations_cust_return,
        is_all_locations_fulfillment,
        is_inactive,
        originating_subsidiary_id

    from source

)

select * from renamed
