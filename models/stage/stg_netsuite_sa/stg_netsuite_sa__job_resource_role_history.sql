
with source as (

    select * from {{ source('raw_netsuite_sa', 'job_resource_role_history') }}

),

renamed as (

    select
        job_resource_role_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        description,
        has_own_time_approval,
        has_replace_assignments,
        is_project_time_approver,
        isinactive,
        name,
        send_mail_for_ratoff_conflict,
        partition_date

    from source

)

select * from renamed
