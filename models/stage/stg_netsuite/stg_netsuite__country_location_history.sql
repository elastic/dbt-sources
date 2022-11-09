
with source as (

    select * from {{ source('raw_netsuite', 'country_location_history') }}

),

renamed as (

    select
        country_location_extid,
        country_location_id,
        country_location_name,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
