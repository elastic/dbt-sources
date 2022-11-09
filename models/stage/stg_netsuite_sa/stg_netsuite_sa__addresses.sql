
with source as (

    select * from {{ source('raw_netsuite_sa', 'addresses') }}

),

renamed as (

    select
        address_id,
        _fivetran_deleted,
        _fivetran_synced,
        address,
        address_line_1,
        address_line_2,
        address_line_3,
        attention,
        city,
        company,
        country,
        date_deleted,
        date_last_modified,
        is_overridden,
        phone,
        state,
        zip

    from source

)

select * from renamed
