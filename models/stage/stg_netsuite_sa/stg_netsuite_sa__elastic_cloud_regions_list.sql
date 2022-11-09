
with source as (

    select * from {{ source('raw_netsuite_sa', 'elastic_cloud_regions_list') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        elastic_cloud_regions_list_ext,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
