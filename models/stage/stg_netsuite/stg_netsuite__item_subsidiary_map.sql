
with source as (

    select * from {{ source('raw_netsuite', 'item_subsidiary_map') }}

),

renamed as (

    select
        item_id,
        subsidiary_id

    from source

)

select * from renamed
