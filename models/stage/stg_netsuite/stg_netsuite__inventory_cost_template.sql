
with source as (

    select * from {{ source('raw_netsuite', 'inventory_cost_template') }}

),

renamed as (

    select
        create_date,
        date_last_modified,
        inv_cost_template_id,
        inv_cost_template_memo,
        inv_cost_template_name,
        isinactive,
        subsidiary_id

    from source

)

select * from renamed
