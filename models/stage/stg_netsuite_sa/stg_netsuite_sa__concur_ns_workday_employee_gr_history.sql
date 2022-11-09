
with source as (

    select * from {{ source('raw_netsuite_sa', 'concur_ns_workday_employee_gr_history') }}

),

renamed as (

    select
        concur_ns_workday_employee__id,
        _fivetran_deleted,
        _fivetran_synced,
        concur_ns_workday_employee__ex,
        concur_ns_workday_employee__na,
        date_created,
        date_deleted,
        employee_group_code_concur_ns,
        employee_group_name_id,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
