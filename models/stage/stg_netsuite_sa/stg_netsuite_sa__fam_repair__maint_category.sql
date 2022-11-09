
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_repair__maint_category') }}

),

renamed as (

    select
        fam_repair__maint_category_id,
        _fivetran_deleted,
        _fivetran_synced,
        asset_type_id,
        date_created,
        date_deleted,
        fam_repair__maint_category_ext,
        fam_repair__maint_category_nam,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
