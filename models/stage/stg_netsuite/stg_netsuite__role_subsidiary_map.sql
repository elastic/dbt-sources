
with source as (

    select * from {{ source('raw_netsuite', 'role_subsidiary_map') }}

),

renamed as (

    select
        role_id,
        subsidiary_id

    from source

)

select * from renamed
