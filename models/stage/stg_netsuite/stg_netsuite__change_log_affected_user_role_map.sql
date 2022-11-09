
with source as (

    select * from {{ source('raw_netsuite', 'change_log_affected_user_role_map') }}

),

renamed as (

    select
        change_log_id,
        role_id

    from source

)

select * from renamed
