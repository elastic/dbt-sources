
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_monthly_resolved_incidents_assignee_map') }}

),

renamed as (

    select
        employee_id,
        sod_monthly_resolved_incide_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed