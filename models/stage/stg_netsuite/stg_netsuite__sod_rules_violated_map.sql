
with source as (

    select * from {{ source('raw_netsuite', 'sod_rules_violated_map') }}

),

renamed as (

    select
        entity_id,
        sod_rule_id

    from source

)

select * from renamed
