
with source as (

    select * from {{ source('raw_netsuite', 'channel_tiers') }}

),

renamed as (

    select
        channel_tiers_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
