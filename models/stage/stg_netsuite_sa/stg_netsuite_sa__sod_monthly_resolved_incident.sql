
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_monthly_resolved_incident') }}

),

renamed as (

    select
        sod_monthly_resolved_incide_id,
        _fivetran_deleted,
        _fivetran_synced,
        approved_by,
        approver_id,
        date_created,
        date_deleted,
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
        sod_monthly_resolved_incide_na,
        start_date,
        status_id

    from source

)

select * from renamed
