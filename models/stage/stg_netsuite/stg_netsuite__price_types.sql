
with source as (

    select * from {{ source('raw_netsuite', 'price_types') }}

),

renamed as (

    select
        date_last_modified,
        discount_percentage,
        isinactive,
        isonline,
        name,
        price_type_extid,
        price_type_id

    from source

)

select * from renamed
