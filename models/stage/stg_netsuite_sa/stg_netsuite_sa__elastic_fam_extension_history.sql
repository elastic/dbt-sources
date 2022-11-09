
with source as (

    select * from {{ source('raw_netsuite_sa', 'elastic_fam_extension_history') }}

),

renamed as (

    select
        elastic_fam_extension_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        elastic_fam_extension_extid,
        is_inactive,
        last_modified_date,
        parent_asset_id,
        parent_id,
        period_added_to_fam_id,
        partition_date

    from source

)

select * from renamed
