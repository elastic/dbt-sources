
with source as (

    select * from {{ source('raw_netsuite', 'spider_files') }}

),

renamed as (

    select
        change_request_id,
        customization_ids,
        date_created,
        file_0,
        is_inactive,
        last_modified_date,
        parent_id,
        spider_files_extid,
        spider_files_id,
        spider_status_id

    from source

)

select * from renamed
