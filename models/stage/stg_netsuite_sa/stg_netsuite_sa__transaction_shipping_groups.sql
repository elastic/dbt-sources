
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_shipping_groups') }}

),

renamed as (

    select
        shipping_group_id,
        transaction_id,
        _fivetran_synced,
        handling_line_id,
        shipping_item_id,
        shipping_line_id,
        transaction_address_id,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
