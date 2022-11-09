
with source as (

    select * from {{ source('raw_netsuite', 'priority_level_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        priority_level_extid

    from source

)

select * from renamed
