
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_base_permission_map') }}

),

renamed as (

    select
        permission_id,
        sod_rule_id

    from source

)

select * from renamed
