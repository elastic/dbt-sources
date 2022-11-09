
with source as (

    select * from {{ source('raw_netsuite', 'change_request_proposed_user_roles_map') }}

),

renamed as (

    select
        change_request_id,
        role_id

    from source

)

select * from renamed
