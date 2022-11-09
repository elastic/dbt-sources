
with source as (

    select * from {{ source('raw_netsuite', 'permission__permission_level__history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        permission_id,
        permission_level_id,
        permission_type_id,
        permission__permission_leve_ex,
        permission__permission_leve_id,
        permission__permission_leve_na

    from source

)

select * from renamed
