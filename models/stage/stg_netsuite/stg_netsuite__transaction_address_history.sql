
with source as (

    select * from {{ source('raw_netsuite', 'transaction_address_history') }}

),

renamed as (

    select
        bill_address_line_1,
        bill_address_line_2,
        bill_address_line_3,
        bill_city,
        bill_company,
        bill_country,
        bill_name,
        bill_phone_number,
        bill_state,
        bill_zip,
        created_by_id,
        date_created,
        date_last_modified,
        last_modified_by_id,
        return_address_line_1,
        return_address_line_2,
        return_city,
        return_country,
        return_state,
        return_zipcode,
        ship_address_line_1,
        ship_address_line_2,
        ship_address_line_3,
        ship_attention,
        ship_city,
        ship_company,
        ship_country,
        ship_name,
        ship_phone_number,
        ship_state,
        ship_zip,
        transaction_address_id,
        transaction_id

    from source

)

select * from renamed
