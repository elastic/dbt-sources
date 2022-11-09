
with source as (

    select * from {{ source('raw_netsuite', 'avaaddressvalflag') }}

),

renamed as (

    select
        address_id,
        address_validated,
        avaaddressvalflag_extid,
        avaaddressvalflag_id,
        customer_id,
        customervendor,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        vendor_id

    from source

)

select * from renamed
