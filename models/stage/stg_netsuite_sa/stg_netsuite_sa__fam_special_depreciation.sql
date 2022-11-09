
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_special_depreciation') }}

),

renamed as (

    select
        fam_special_depreciation_id,
        _fivetran_deleted,
        _fivetran_synced,
        applied_term_1,
        applied_term_2,
        asset_id,
        date_created,
        date_deleted,
        fam_special_depreciation_extid,
        is_inactive,
        last_modified_date,
        limit_0,
        parent_id,
        rate

    from source

)

select * from renamed
