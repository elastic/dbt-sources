
with source as (

    select * from {{ source('raw_netsuite', 'fam_asset_usage_history') }}

),

renamed as (

    select
        asset_id,
        comments,
        date_0,
        date_created,
        fam_asset_usage_extid,
        fam_asset_usage_id,
        is_inactive,
        last_modified_date,
        parent_id,
        period,
        units_used

    from source

)

select * from renamed
