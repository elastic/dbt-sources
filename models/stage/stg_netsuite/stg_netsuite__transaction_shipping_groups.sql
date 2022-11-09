
with source as (

    select * from {{ source('raw_netsuite', 'transaction_shipping_groups') }}

),

renamed as (

    select
        handling_line_id,
        shipping_group_id,
        shipping_item_id,
        shipping_line_id,
        transaction_address_id,
        transaction_id

    from source

)

select * from renamed
