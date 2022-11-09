
with source as (

    select * from {{ source('raw_netsuite', 'campaign_verticals_history') }}

),

renamed as (

    select
        campaignvertical_extid,
        campaignvertical_id,
        date_last_modified,
        description,
        isinactive,
        name

    from source

)

select * from renamed
