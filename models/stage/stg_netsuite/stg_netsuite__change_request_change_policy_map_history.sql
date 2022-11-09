
with source as (

    select * from {{ source('raw_netsuite', 'change_request_change_policy_map_history') }}

),

renamed as (

    select
        change_request_id,
        change__approval_policy_id

    from source

)

select * from renamed
