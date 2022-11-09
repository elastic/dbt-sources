
with source as (

    select * from {{ source('raw_netsuite', 'avashippingcodes_history') }}

),

renamed as (

    select
        avashippingcodes_extid,
        avashippingcodes_id,
        avashippingcodes_name,
        date_created,
        description,
        is_inactive,
        last_modified_date,
        parent_id,
        shipping_code

    from source

)

select * from renamed
