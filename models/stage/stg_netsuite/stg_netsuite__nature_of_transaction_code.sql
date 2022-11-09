
with source as (

    select * from {{ source('raw_netsuite', 'nature_of_transaction_code') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        nature_of_transaction_code_ext

    from source

)

select * from renamed
