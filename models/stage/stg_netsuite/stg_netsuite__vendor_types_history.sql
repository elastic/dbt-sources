
with source as (

    select * from {{ source('raw_netsuite', 'vendor_types_history') }}

),

renamed as (

    select
        isinactive,
        name,
        parent_id,
        vendor_type_extid,
        vendor_type_id

    from source

)

select * from renamed
