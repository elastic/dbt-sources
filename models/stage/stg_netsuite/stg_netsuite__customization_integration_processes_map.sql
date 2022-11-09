
with source as (

    select * from {{ source('raw_netsuite', 'customization_integration_processes_map') }}

),

renamed as (

    select
        customization_id,
        process_id

    from source

)

select * from renamed
