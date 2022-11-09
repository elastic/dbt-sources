
with source as (

    select * from {{ source('raw_netsuite', 'item_vendor_map') }}

),

renamed as (

    select
        is_preferred,
        item_id,
        subsidiary_id,
        vendor_code,
        vendor_id

    from source

)

select * from renamed
