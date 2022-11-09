
with source as (

    select * from {{ source('raw_netsuite', 'account_type') }}

),

renamed as (

    select
        account_type_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
