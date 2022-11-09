
with source as (

    select * from {{ source('raw_netsuite', 'campaign_categories') }}

),

renamed as (

    select
        campaigncategory_extid,
        campaigncategory_id,
        date_last_modified,
        default_campaign_id,
        description,
        is_available_externally,
        isinactive,
        name,
        parent_id

    from source

)

select * from renamed
