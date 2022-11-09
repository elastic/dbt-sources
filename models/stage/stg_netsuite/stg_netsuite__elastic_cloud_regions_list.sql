
with source as (

    select * from {{ source('raw_netsuite', 'elastic_cloud_regions_list') }}

),

renamed as (

    select
        date_created,
        elastic_cloud_regions_list_ext,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
