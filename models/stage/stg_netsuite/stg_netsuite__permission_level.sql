
with source as (

    select * from {{ source('raw_netsuite', 'permission_level') }}

),

renamed as (

    select
        date_created,
        id_0,
        is_inactive,
        last_modified_date,
        parent_id,
        permission_level_extid,
        permission_level_id,
        permission_level_name

    from source

)

select * from renamed
