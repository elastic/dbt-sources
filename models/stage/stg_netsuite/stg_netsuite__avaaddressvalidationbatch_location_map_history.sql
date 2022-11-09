
with source as (

    select * from {{ source('raw_netsuite', 'avaaddressvalidationbatch_location_map_history') }}

),

renamed as (

    select
        avaaddressvalidationbatch_id,
        location_id

    from source

)

select * from renamed
