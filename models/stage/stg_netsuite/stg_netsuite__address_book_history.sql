
with source as (

    select * from {{ source('raw_netsuite', 'address_book_history') }}

),

renamed as (

    select
        address,
        address_book_id,
        address_line_1,
        address_line_2,
        address_line_3,
        attention,
        city,
        company,
        country,
        date_last_modified,
        entity_id,
        is_default_bill_address,
        is_default_ship_address,
        is_inactive,
        name,
        phone,
        state,
        zip,
        address_id

    from source

)

select * from renamed
