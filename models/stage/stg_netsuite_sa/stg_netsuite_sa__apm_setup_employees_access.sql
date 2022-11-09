
with source as (

    select * from {{ source('raw_netsuite_sa', 'apm_setup_employees_access') }}

),

renamed as (

    select
        apm_setup_employees_access_id,
        _fivetran_deleted,
        _fivetran_synced,
        apm_setup_ea_employee_id,
        apm_setup_ea_parent_id,
        apm_setup_ea_top_10,
        apm_setup_employees_access_ext,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
