
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_roles_map_history') }}

),

renamed as (

    select
        role_id,
        sod_rule_id

    from source

)

select * from renamed
