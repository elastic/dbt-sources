
with source as (

    select * from {{ source('raw_netsuite', 'campaign_families') }}

),

renamed as (

    select
        campaignfamily_extid,
        campaignfamily_id,
        date_last_modified,
        description,
        isinactive,
        name

    from source

)

select * from renamed
