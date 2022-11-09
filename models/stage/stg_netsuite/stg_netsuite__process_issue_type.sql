
with source as (

    select * from {{ source('raw_netsuite', 'process_issue_type') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        process_issue_type_extid

    from source

)

select * from renamed
