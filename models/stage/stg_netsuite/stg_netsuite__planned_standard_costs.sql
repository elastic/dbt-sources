
with source as (

    select * from {{ source('raw_netsuite', 'planned_standard_costs') }}

),

renamed as (

    select
        date_created,
        date_last_modified,
        item_id,
        location_id,
        memo,
        planned_standard_cost_id,
        standard_cost_version_id

    from source

)

select * from renamed
