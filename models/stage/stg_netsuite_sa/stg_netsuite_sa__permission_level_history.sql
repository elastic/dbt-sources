
with source as (

    select * from {{ source('raw_netsuite_sa', 'permission_level_history') }}

),

renamed as (

    select
        permission_level_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        id_0,
        is_inactive,
        last_modified_date,
        parent_id,
        permission_level_extid,
        permission_level_name,
        partition_date

    from source

)

select * from renamed
