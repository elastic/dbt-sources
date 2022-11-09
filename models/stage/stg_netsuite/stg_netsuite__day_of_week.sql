
with source as (

    select * from {{ source('raw_netsuite', 'day_of_week') }}

),

renamed as (

    select
        date_created,
        day_of_week_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
