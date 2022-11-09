
with source as (

    select * from {{ source('raw_netsuite', 'customization_deployments_map_history') }}

),

renamed as (

    select
        customization2_id,
        customization_id

    from source

)

select * from renamed
