
with source as (

    select * from {{ source('raw_netsuite', 'item_supply_plan_source_history') }}

),

renamed as (

    select
        assembly_parent_id,
        date_order,
        is_detail_transaction_line,
        item_supply_plan_id,
        quantity,
        ship_receipt_date,
        transaction_id,
        transaction_line_id,
        type_id

    from source

)

select * from renamed
