
with source as (

    select * from {{ source('raw_netsuite', 'change_log_sod_noncompliant_roles_map') }}

),

renamed as (

    select
        change_log_id,
        role_id

    from source

)

select * from renamed
