
with source as (

    select * from {{ source('raw_netsuite', 'item_subsidiary_map_history') }}

),

renamed as (

    select
        item_id,
        subsidiary_id

    from source

)

select * from renamed
