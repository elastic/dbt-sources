
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_asset_field_id_type') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        fam_asset_field_id_type_extid,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
