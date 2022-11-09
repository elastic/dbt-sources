
with source as (

    select * from {{ source('raw_netsuite_sa', 'permission_history') }}

),

renamed as (

    select
        permission_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        description,
        is_inactive,
        last_modified_date,
        parent_id,
        permission_extid,
        permission_id_0,
        permission_name,
        permission_type_id,
        record_script_id,
        partition_date

    from source

)

select * from renamed
