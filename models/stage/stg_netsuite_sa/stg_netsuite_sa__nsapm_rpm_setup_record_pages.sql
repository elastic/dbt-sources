
with source as (

    select * from {{ source('raw_netsuite_sa', 'nsapm_rpm_setup_record_pages') }}

),

renamed as (

    select
        nsapm_rpm_setup_record_page_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nsapm_rpm_operation,
        nsapm_rpm_record_type,
        nsapm_rpm_setup_record_page_ex,
        nsapm_rpm_user_id,
        parent_id

    from source

)

select * from renamed
