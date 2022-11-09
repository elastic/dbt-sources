
with source as (

    select * from {{ source('raw_netsuite', 'roles1') }}

),

renamed as (

    select
        center_created_by,
        center_created_date,
        center_id,
        center_modified_by,
        center_modified_date,
        center_name,
        class_restriction_type,
        custom_record_permission_name,
        date_last_modified,
        department_restriction_type,
        employee_restriction_type,
        is_classallowviewing,
        is_departmentallowviewing,
        is_employeeallowviewing,
        is_inactive,
        is_itemclassrestricted,
        is_itemdepartmentrestricted,
        is_itemlocationtrestricted,
        is_locationallowviewing,
        is_subsidiaryallowviewing,
        location_restriction_type,
        permission_id,
        permission_level_id,
        permission_level_name,
        permission_name,
        permsofroles_date_modified,
        permsofroles_modified_by,
        role_created_by,
        role_created_date,
        role_id,
        role_modified_by,
        role_name

    from source

)

select * from renamed
