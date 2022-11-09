
with source as (

    select * from {{ source('raw_netsuite', 'fam_repair__maint_category') }}

),

renamed as (

    select
        asset_type_id,
        date_created,
        fam_repair__maint_category_ext,
        fam_repair__maint_category_id,
        fam_repair__maint_category_nam,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
