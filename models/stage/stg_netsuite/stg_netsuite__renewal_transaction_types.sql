
with source as (

    select * from {{ source('raw_netsuite', 'renewal_transaction_types') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        renewal_transaction_types_exti

    from source

)

select * from renamed
