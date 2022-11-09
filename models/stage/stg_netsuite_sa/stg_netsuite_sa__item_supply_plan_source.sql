
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_supply_plan_source') }}

),

renamed as (

    select
        fivetran_index,
        item_supply_plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        assembly_parent_id,
        date_deleted,
        date_order,
        is_detail_transaction_line,
        quantity,
        ship_receipt_date,
        transaction_id,
        transaction_line_id,
        type_id

    from source

)

select * from renamed
