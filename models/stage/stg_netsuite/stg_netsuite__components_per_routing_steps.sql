
with source as (

    select * from {{ source('raw_netsuite', 'components_per_routing_steps') }}

),

renamed as (

    select
        component_id,
        mfg_routing_id,
        sequence_id,
        sequence_number

    from source

)

select * from renamed
