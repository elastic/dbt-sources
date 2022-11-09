
with source as (

    select * from {{ source('raw_netsuite', 'fam_asset_reset_data') }}

),

renamed as (

    select
        asset_id_list,
        date_created,
        fam_asset_reset_data_extid,
        fam_asset_reset_data_id,
        is_inactive,
        last_modified_date,
        parent_id,
        slave_id_list

    from source

)

select * from renamed
