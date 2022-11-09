
with source as (

    select * from {{ source('raw_netsuite', 'customization_behavior_map') }}

),

renamed as (

    select
        control_type_id,
        customization_id

    from source

)

select * from renamed
