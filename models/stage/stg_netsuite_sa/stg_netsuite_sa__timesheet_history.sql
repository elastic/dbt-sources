
with source as (

    select * from {{ source('raw_netsuite_sa', 'timesheet_history') }}

),

renamed as (

    select
        fivetran_index,
        timesheet_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        employee_id,
        end_date,
        start_date,
        status_code,
        partition_date

    from source

)

select * from renamed
