
with source as (

    select * from {{ source('raw_netsuite', 'fam_lifetimes_history') }}

),

renamed as (

    select
        asset_type_id,
        date_created,
        depreciation_method_id,
        fam_lifetimes_extid,
        fam_lifetimes_id,
        is_inactive,
        last_modified_date,
        lifetime,
        location_id,
        parent_id

    from source

)

select * from renamed
