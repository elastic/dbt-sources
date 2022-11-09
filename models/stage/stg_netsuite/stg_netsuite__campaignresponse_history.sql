
with source as (

    select * from {{ source('raw_netsuite', 'campaignresponse_history') }}

),

renamed as (

    select
        campaign_event_id,
        campaign_response_extid,
        campaign_response_id,
        contact_id,
        date_sent,
        entity_id,
        response_id

    from source

)

select * from renamed
