
with source as (

    select * from {{ source('raw_netsuite', 'sod_monthly_resolved_incident_history') }}

),

renamed as (

    select
        approved_by,
        approver_id,
        date_created,
        date_reopened,
        date_signed_off,
        end_date,
        is_inactive,
        last_modified_date,
        old_status_id,
        parent_id,
        reopened,
        reopened_by_id,
        reopened_reason,
        sod_monthly_resolved_incide_ex,
        sod_monthly_resolved_incide_id,
        sod_monthly_resolved_incide_na,
        start_date,
        status_id

    from source

)

select * from renamed
