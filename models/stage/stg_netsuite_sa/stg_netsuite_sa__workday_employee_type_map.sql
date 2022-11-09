
with source as (

    select * from {{ source('raw_netsuite_sa', 'workday_employee_type_map') }}

),

renamed as (

    select
        workday_employee_type_map_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        netsuite_employee_type_id,
        parent_id,
        workday_employee_type_map_exti,
        workday_employee_type_map_name

    from source

)

select * from renamed
