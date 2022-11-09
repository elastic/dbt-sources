
with source as (

    select * from {{ source('raw_netsuite', 'elastic_cloud_item_type_list_history') }}

),

renamed as (

    select
        date_created,
        elastic_cloud_item_type_lis_ex,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
