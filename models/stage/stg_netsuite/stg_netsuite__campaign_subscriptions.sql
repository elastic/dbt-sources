
with source as (

    select * from {{ source('raw_netsuite', 'campaign_subscriptions') }}

),

renamed as (

    select
        campaignsubscription_extid,
        campaignsubscription_id,
        date_last_modified,
        description,
        isinactive,
        name

    from source

)

select * from renamed
