
with source as (

    select * from {{ source('raw_netsuite_sa', 'address_book') }}

),

renamed as (

    select
        address_book_id,
        _fivetran_synced,
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
        entity_id,
        is_default_bill_address,
        is_default_ship_address,
        is_inactive,
        name,
        phone,
        state,
        zip,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
