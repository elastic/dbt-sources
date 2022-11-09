
with source as (

    select * from {{ source('raw_netsuite_sa', 'nsapm_rpm_setup_date_range') }}

),

renamed as (

    select
        nsapm_rpm_setup_date_range_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nsapm_rpm_date_range_end_date,
        nsapm_rpm_date_range_end_time,
        nsapm_rpm_date_range_start_da,
        nsapm_rpm_date_range_start_ti,
        nsapm_rpm_setup_date_range_ext,
        nsapm_rpm_user_id,
        parent_id

    from source

)

select * from renamed
