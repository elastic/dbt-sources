
with source as (

    select * from {{ source('raw_netsuite', 'process_supporting_processes_map_history') }}

),

renamed as (

    select
        process2_id,
        process_id

    from source

)

select * from renamed
