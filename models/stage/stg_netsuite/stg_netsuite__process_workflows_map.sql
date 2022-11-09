
with source as (

    select * from {{ source('raw_netsuite', 'process_workflows_map') }}

),

renamed as (

    select
        customization_id,
        process_id

    from source

)

select * from renamed
