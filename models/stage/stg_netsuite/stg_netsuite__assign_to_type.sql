
with source as (

    select * from {{ source('raw_netsuite', 'assign_to_type') }}

),

renamed as (

    select
        assign_to_type_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed