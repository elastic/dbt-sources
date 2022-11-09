
with source as (

    select * from {{ source('raw_netsuite', 'change_request_change_policy_map') }}

),

renamed as (

    select
        change__approval_policy_id,
        change_request_id

    from source

)

select * from renamed
