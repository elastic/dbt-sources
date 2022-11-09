
with source as (

    select * from {{ source('raw_netsuite', 'role_subsidiary_map_history') }}

),

renamed as (

    select
        role_id,
        subsidiary_id

    from source

)

select * from renamed
