
with source as (

    select * from {{ source('raw_netsuite_sa', 'pending_employee_evaluations') }}

),

renamed as (

    select
        pending_employee_evaluation_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        date_triggered,
        employee_to_update_id,
        is_inactive,
        last_modified_date,
        origin,
        parent_id,
        pending_employee_evaluation_ex,
        status_id

    from source

)

select * from renamed
