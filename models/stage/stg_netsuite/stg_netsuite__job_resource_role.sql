
with source as (

    select * from {{ source('raw_netsuite', 'job_resource_role') }}

),

renamed as (

    select
        description,
        has_own_time_approval,
        has_replace_assignments,
        is_project_time_approver,
        isinactive,
        job_resource_role_id,
        name,
        send_mail_for_ratoff_conflict

    from source

)

select * from renamed
