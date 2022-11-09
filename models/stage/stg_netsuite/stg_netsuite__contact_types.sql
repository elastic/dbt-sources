
with source as (

    select * from {{ source('raw_netsuite', 'contact_types') }}

),

renamed as (

    select
        contact_id,
        date_last_modified,
        isinactive,
        name,
        owner_id,
        parent_id,
        shared_0

    from source

)

select * from renamed
