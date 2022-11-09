
with source as (

    select * from {{ source('raw_netsuite', 'partner_types') }}

),

renamed as (

    select
        date_last_modified,
        isinactive,
        name,
        parent_id,
        partner_id,
        partner_type_extid,
        partner_type_id

    from source

)

select * from renamed
