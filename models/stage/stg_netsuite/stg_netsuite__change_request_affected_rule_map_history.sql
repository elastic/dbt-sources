
with source as (

    select * from {{ source('raw_netsuite', 'change_request_affected_rule_map_history') }}

),

renamed as (

    select
        change_request_id,
        sod_rule_id

    from source

)

select * from renamed
