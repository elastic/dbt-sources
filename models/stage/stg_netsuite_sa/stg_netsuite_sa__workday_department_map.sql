
with source as (

    select * from {{ source('raw_netsuite_sa', 'workday_department_map') }}

),

renamed as (

    select
        workday_department_map_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        netsuite_department_id,
        parent_id,
        workday_department_map_extid,
        workday_department_map_name

    from source

)

select * from renamed
