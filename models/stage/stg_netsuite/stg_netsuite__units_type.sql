
with source as (

    select * from {{ source('raw_netsuite', 'units_type') }}

),

renamed as (

    select
        date_last_modified,
        isinactive,
        name,
        units_type_extid,
        units_type_id

    from source

)

select * from renamed
