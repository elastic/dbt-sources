
with source as (

    select * from {{ source('raw_netsuite', 'item_shipmethods') }}

),

renamed as (

    select
        is_default,
        item_id,
        shipmethod_id

    from source

)

select * from renamed
