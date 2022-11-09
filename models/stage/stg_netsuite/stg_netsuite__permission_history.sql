
with source as (

    select * from {{ source('raw_netsuite', 'permission_history') }}

),

renamed as (

    select
        date_created,
        description,
        is_inactive,
        last_modified_date,
        parent_id,
        permission_extid,
        permission_id,
        permission_id_0,
        permission_name,
        permission_type_id

    from source

)

select * from renamed
