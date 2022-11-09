
with source as (

    select * from {{ source('raw_netsuite', 'campaign_audiences_history') }}

),

renamed as (

    select
        campaignaudience_extid,
        campaignaudience_id,
        date_last_modified,
        description,
        isinactive,
        name

    from source

)

select * from renamed
