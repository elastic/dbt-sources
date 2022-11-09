
with source as (

    select * from {{ source('raw_netsuite_sa', 'nsapm_rpm_setup_general_history') }}

),

renamed as (

    select
        nsapm_rpm_setup_general_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nsapm_rpm_general_user_id,
        nsapm_rpm_histogram_interval,
        nsapm_rpm_record_tiles,
        nsapm_rpm_setup_general_extid,
        parent_id,
        partition_date

    from source

)

select * from renamed
