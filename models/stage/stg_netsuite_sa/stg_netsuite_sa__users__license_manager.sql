
with source as (

    select * from {{ source('raw_netsuite_sa', 'users__license_manager') }}

),

renamed as (

    select
        users__license_manager_id,
        _fivetran_deleted,
        _fivetran_synced,
        auth_email,
        date_created,
        date_deleted,
        edition,
        full_license_count,
        full_license_end_date,
        full_license_start_date,
        is_inactive,
        last_modified_date,
        license_number,
        license_number_test,
        license_type,
        licensed_modules,
        parent_id,
        stopscripts,
        subsidiaries,
        temp_lincense_count,
        users__license_manager_extid

    from source

)

select * from renamed
