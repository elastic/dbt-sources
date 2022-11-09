
with source as (

    select * from {{ source('raw_netsuite', 'avacoordinates_history') }}

),

renamed as (

    select
        address_id,
        avacoordinates_extid,
        avacoordinates_id,
        customer_id,
        customer_internal_id,
        date_created,
        is_inactive,
        last_modified_date,
        latitude,
        longitude,
        parent_id

    from source

)

select * from renamed
