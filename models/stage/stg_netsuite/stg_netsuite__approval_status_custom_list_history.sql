
with source as (

    select * from {{ source('raw_netsuite', 'approval_status_custom_list_history') }}

),

renamed as (

    select
        approval_status_custom_list_ex,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
