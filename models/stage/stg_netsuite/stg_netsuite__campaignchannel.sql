
with source as (

    select * from {{ source('raw_netsuite', 'campaignchannel') }}

),

renamed as (

    select
        campaign_channel_extid,
        campaign_channel_id,
        date_last_modified,
        description,
        event_type_id,
        is_inactive,
        name

    from source

)

select * from renamed
