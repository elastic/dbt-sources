
with source as (

    select * from {{ source('raw_netsuite', 'campaign_search_engine_history') }}

),

renamed as (

    select
        date_last_modified,
        description,
        isinactive,
        name,
        search_engine_extid,
        search_engine_id

    from source

)

select * from renamed
