
with source as (

    select * from {{ source('raw_netsuite_sa', 'permission__permission_level__history') }}

),

renamed as (

    select
        permission__permission_leve_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        permission__permission_leve_ex,
        permission__permission_leve_na,
        permission_id,
        permission_level_id,
        permission_type_id,
        partition_date

    from source

)

select * from renamed
