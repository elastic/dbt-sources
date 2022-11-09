
with source as (

    select * from {{ source('raw_workday', 'crm_absence_events') }}

),

renamed as (

    select
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        business_title,
        cf_loa_fivetran,
        employee_type,
        holidays_in_date_range_group,
        leave_of_absence_requests_group,
        legal_name,
        loawid,
        location_hierarchy_group,
        primary_work_email,
        time_off_details_group,
        time_zone

    from source

)

select * from renamed
