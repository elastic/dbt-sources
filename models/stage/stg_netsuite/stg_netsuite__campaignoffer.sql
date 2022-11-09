
with source as (

    select * from {{ source('raw_netsuite', 'campaignoffer') }}

),

renamed as (

    select
        campaign_offer_extid,
        campaign_offer_id,
        date_last_modified,
        description,
        is_inactive,
        name

    from source

)

select * from renamed
