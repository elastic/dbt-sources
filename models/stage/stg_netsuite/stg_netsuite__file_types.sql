
with source as (

    select * from {{ source('raw_netsuite', 'file_types') }}

),

renamed as (

    select
        date_created,
        file_types_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
