
with source as (

    select * from {{ source('raw_netsuite_sa', 'concur_fpa_department_table_f') }}

),

renamed as (

    select
        concur_fpa_department_table_id,
        _fivetran_deleted,
        _fivetran_synced,
        concur_fpa_department_table_ex,
        concur_fpa_department_table_na,
        date_created,
        date_deleted,
        department_fpa_approver_con_id,
        fpa_employee_id,
        is_inactive,
        last_modified_date,
        ns_iid_fpa_approver_for_concu,
        ns_iid_of_department,
        parent_id

    from source

)

select * from renamed
