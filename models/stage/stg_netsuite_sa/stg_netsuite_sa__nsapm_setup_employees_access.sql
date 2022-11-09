
with source as (

    select * from {{ source('raw_netsuite_sa', 'nsapm_setup_employees_access') }}

),

renamed as (

    select
        nsapm_setup_employees_acces_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nsapm_setup_ea_employee_id,
        nsapm_setup_ea_parent_id,
        nsapm_setup_ea_top_10,
        nsapm_setup_employees_acces_ex,
        parent_id

    from source

)

select * from renamed
