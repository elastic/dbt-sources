
with source as (

    select * from {{ source('raw_netsuite', 'vendor_subsidiary_map') }}

),

renamed as (

    select
        subsidiary_id,
        vendor_id

    from source

)

select * from renamed
