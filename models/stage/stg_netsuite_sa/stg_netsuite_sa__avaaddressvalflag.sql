
with source as (

    select * from {{ source('raw_netsuite_sa', 'avaaddressvalflag') }}

),

renamed as (

    select
        avaaddressvalflag_id,
        _fivetran_deleted,
        _fivetran_synced,
        address_id,
        address_validated,
        avaaddressvalflag_extid,
        customer_id,
        customervendor,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        vendor_id

    from source

)

select * from renamed
