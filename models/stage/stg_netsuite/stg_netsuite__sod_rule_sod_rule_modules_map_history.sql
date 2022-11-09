
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_sod_rule_modules_map_history') }}

),

renamed as (

    select
        sod_modules_id,
        sod_rule_id

    from source

)

select * from renamed
