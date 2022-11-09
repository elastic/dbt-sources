
with source as (

    select * from {{ source('raw_netsuite', 'customer_types_history') }}

),

renamed as (

    select
        customer_type_extid,
        customer_type_id,
        date_last_modified,
        isinactive,
        name,
        parent_id

    from source

)

select * from renamed
