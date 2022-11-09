
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_supply_plan_lines') }}

),

renamed as (

    select
        fivetran_index,
        item_supply_plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        is_order_created,
        line_id,
        order_date,
        order_type,
        quantity,
        receipt_date,
        source_location_id

    from source

)

select * from renamed
