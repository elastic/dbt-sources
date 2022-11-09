
with source as (

    select * from {{ source('raw_netsuite', 'sod_processing_status_list') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        sod_processing_status_list_ext

    from source

)

select * from renamed
