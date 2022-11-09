
with source as (

    select * from {{ source('raw_netsuite', 'waitlist') }}

),

renamed as (

    select
        date_created,
        eventid,
        is_inactive,
        item_id,
        last_modified_date,
        parent_id,
        userid_id,
        waitlist_extid,
        waitlist_id,
        waitlist_name

    from source

)

select * from renamed
