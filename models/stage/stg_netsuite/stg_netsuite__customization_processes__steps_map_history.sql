
with source as (

    select * from {{ source('raw_netsuite', 'customization_processes__steps_map_history') }}

),

renamed as (

    select
        customization_id,
        process_id

    from source

)

select * from renamed