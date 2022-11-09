
with source as (

    select * from {{ source('raw_netsuite', 'capacity_list_history') }}

),

renamed as (

    select
        capacity_list_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
