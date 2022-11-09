
with source as (

    select * from {{ source('raw_netsuite', 'customer_subsidiary_map_history') }}

),

renamed as (

    select
        customer_id,
        subsidiary_id

    from source

)

select * from renamed
