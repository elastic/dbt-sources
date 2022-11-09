
with source as (

    select * from {{ source('raw_netsuite_sa', 'ssp_category') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        ssp_category_extid,
        license_sku,
        cloud_skus,
        parent_id,
        ssp_category_id,
        is_inactive,
        ssp_category_name

    from source

)

select * from renamed
