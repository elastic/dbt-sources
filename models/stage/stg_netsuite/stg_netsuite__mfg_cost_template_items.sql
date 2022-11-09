
with source as (

    select * from {{ source('raw_netsuite', 'mfg_cost_template_items') }}

),

renamed as (

    select
        item_id,
        mfg_cost_template_id,
        mfg_cost_template_line_order

    from source

)

select * from renamed
