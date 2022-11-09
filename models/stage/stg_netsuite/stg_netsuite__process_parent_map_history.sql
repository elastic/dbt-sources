
with source as (

    select * from {{ source('raw_netsuite', 'process_parent_map_history') }}

),

renamed as (

    select
        process2_id,
        process_id

    from source

)

select * from renamed
