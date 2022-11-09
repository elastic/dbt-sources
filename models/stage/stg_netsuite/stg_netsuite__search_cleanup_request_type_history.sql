
with source as (

    select * from {{ source('raw_netsuite', 'search_cleanup_request_type_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        search_cleanup_request_type_ex

    from source

)

select * from renamed
