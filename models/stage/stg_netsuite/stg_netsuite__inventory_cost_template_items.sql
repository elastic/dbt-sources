
with source as (

    select * from {{ source('raw_netsuite', 'inventory_cost_template_items') }}

),

renamed as (

    select
        inv_cost_template_id,
        inv_cost_template_line_order,
        item_id

    from source

)

select * from renamed
