
with source as (

    select * from {{ source('raw_netsuite', 'allowed_country_formats_by_edition_countries_map_history') }}

),

renamed as (

    select
        allowed_country_formats_by__id,
        country_id

    from source

)

select * from renamed
