
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_conflicting_permission_levels_map_history') }}

),

renamed as (

    select
        permission_level_id,
        sod_rule_id

    from source

)

select * from renamed
