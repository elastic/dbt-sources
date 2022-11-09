
with source as (

    select * from {{ source('raw_netsuite', 'competitor') }}

),

renamed as (

    select
        competitor_extid,
        competitor_id,
        date_last_modified,
        description,
        is_inactive,
        name,
        products_services,
        strategy,
        strengths,
        url,
        weaknesses

    from source

)

select * from renamed
