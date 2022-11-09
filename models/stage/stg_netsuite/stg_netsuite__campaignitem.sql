
with source as (

    select * from {{ source('raw_netsuite', 'campaignitem') }}

),

renamed as (

    select
        campaign_id,
        item_id

    from source

)

select * from renamed
