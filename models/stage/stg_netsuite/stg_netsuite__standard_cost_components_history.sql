
with source as (

    select * from {{ source('raw_netsuite', 'standard_cost_components_history') }}

),

renamed as (

    select
        component_id,
        cost_category,
        line_id,
        planned_standard_cost_id,
        quantity,
        standard_cost

    from source

)

select * from renamed
