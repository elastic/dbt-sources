
with source as (

    select * from {{ source('raw_netsuite', 'customization_sod_violations_map_history') }}

),

renamed as (

    select
        customization_id,
        sod_rule_id

    from source

)

select * from renamed
