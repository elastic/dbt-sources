
with source as (

    select * from {{ source('raw_netsuite', 'change_control_levels') }}

),

renamed as (

    select
        change_control_levels_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
