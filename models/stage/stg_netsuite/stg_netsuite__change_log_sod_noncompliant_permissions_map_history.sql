
with source as (

    select * from {{ source('raw_netsuite', 'change_log_sod_noncompliant_permissions_map_history') }}

),

renamed as (

    select
        change_log_id,
        permission_id

    from source

)

select * from renamed
