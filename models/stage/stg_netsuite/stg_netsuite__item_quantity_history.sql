
with source as (

    select * from {{ source('raw_netsuite', 'item_quantity_history') }}

),

renamed as (

    select
        item_id,
        item_quantity_id,
        max_count,
        min_count

    from source

)

select * from renamed
