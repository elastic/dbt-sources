
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_departments_map_history') }}

),

renamed as (

    select
        department_id,
        sod_rule_id

    from source

)

select * from renamed
