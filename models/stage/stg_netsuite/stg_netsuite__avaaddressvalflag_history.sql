
with source as (

    select * from {{ source('raw_netsuite', 'avaaddressvalflag_history') }}

),

renamed as (

    select
        address_id,
        address_validated,
        avaaddressvalflag_extid,
        avaaddressvalflag_id,
        customervendor,
        customer_id,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        vendor_id

    from source

)

select * from renamed
