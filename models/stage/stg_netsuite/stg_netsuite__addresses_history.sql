
with source as (

    select * from {{ source('raw_netsuite', 'addresses_history') }}

),

renamed as (

    select
        address,
        address_id,
        address_line_1,
        address_line_2,
        address_line_3,
        attention,
        city,
        company,
        country,
        date_last_modified,
        is_overridden,
        phone,
        state,
        zip

    from source

)

select * from renamed
