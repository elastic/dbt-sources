
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_lifetimes_history') }}

),

renamed as (

    select
        fam_lifetimes_id,
        _fivetran_deleted,
        _fivetran_synced,
        asset_type_id,
        date_created,
        date_deleted,
        depreciation_method_id,
        fam_lifetimes_extid,
        is_inactive,
        last_modified_date,
        lifetime,
        location_id,
        parent_id,
        partition_date

    from source

)

select * from renamed
