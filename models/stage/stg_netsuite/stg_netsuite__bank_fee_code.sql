
with source as (

    select * from {{ source('raw_netsuite', 'bank_fee_code') }}

),

renamed as (

    select
        bank_fee_code_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
