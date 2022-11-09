
with source as (

    select * from {{ source('raw_netsuite', 'pending_employee_evaluations_history') }}

),

renamed as (

    select
        date_created,
        date_triggered,
        employee_to_update_id,
        is_inactive,
        last_modified_date,
        parent_id,
        pending_employee_evaluation_ex,
        pending_employee_evaluation_id

    from source

)

select * from renamed
