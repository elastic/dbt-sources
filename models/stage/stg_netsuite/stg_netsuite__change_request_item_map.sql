
with source as (

    select * from {{ source('raw_netsuite', 'change_request_item_map') }}

),

renamed as (

    select
        change_request_id,
        item_id

    from source

)

select * from renamed
