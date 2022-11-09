
with source as (

    select * from {{ source('raw_netsuite', 'fam_system_setup_user_role_map_history') }}

),

renamed as (

    select
        fam_system_setup_id,
        role_id

    from source

)

select * from renamed
