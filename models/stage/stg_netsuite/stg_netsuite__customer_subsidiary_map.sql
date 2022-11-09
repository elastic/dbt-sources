
with source as (

    select * from {{ source('raw_netsuite', 'customer_subsidiary_map') }}

),

renamed as (

    select
        customer_id,
        subsidiary_id

    from source

)

select * from renamed
