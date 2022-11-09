
with source as (

    select * from {{ source('raw_netsuite', 'subsidiary_nexus_map_history') }}

),

renamed as (

    select
        nexus_id,
        subsidiary_id

    from source

)

select * from renamed
