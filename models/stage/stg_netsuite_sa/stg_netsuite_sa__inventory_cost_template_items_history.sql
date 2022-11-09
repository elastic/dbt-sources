
with source as (

    select * from {{ source('raw_netsuite_sa', 'inventory_cost_template_items_history') }}

),

renamed as (

    select
        inv_cost_template_id,
        inv_cost_template_line_order,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        item_id,
        partition_date

    from source

)

select * from renamed
