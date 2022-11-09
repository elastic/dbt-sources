
with source as (

    select * from {{ source('raw_netsuite', 'list_of_custom_records') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        list_of_custom_records_extid

    from source

)

select * from renamed
