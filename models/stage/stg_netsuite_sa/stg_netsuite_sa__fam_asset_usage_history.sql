
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_asset_usage_history') }}

),

renamed as (

    select
        fam_asset_usage_id,
        _fivetran_deleted,
        _fivetran_synced,
        asset_id,
        comments,
        date_0,
        date_created,
        date_deleted,
        fam_asset_usage_extid,
        is_inactive,
        last_modified_date,
        parent_id,
        period,
        units_used,
        partition_date

    from source

)

select * from renamed
