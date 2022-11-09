
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_asset_reset_data') }}

),

renamed as (

    select
        fam_asset_reset_data_id,
        _fivetran_deleted,
        _fivetran_synced,
        asset_id_list,
        date_created,
        date_deleted,
        fam_asset_reset_data_extid,
        is_inactive,
        last_modified_date,
        parent_id,
        slave_id_list,
        asset_value_id_list

    from source

)

select * from renamed
