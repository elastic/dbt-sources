
with source as (

    select * from {{ source('raw_netsuite', 'change_request_proposed_global_permissions_map_history') }}

),

renamed as (

    select
        change_request_id,
        permission_id,
        permission__permission_level__

    from source

)

select * from renamed
