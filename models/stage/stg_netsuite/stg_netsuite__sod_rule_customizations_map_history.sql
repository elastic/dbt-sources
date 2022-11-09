
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_customizations_map_history') }}

),

renamed as (

    select
        customization_id,
        sod_rule_id

    from source

)

select * from renamed
