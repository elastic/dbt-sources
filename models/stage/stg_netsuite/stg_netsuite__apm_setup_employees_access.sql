
with source as (

    select * from {{ source('raw_netsuite', 'apm_setup_employees_access') }}

),

renamed as (

    select
        apm_setup_ea_employee_id,
        apm_setup_ea_parent_id,
        apm_setup_ea_top_10,
        apm_setup_employees_access_ext,
        apm_setup_employees_access_id,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
