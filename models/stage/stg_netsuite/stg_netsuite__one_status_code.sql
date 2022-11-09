
with source as (

    select * from {{ source('raw_netsuite', 'one_status_code') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        one_status_code_extid

    from source

)

select * from renamed
