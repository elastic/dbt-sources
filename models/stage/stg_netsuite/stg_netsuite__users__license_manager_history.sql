
with source as (

    select * from {{ source('raw_netsuite', 'users__license_manager_history') }}

),

renamed as (

    select
        auth_email,
        date_created,
        edition,
        full_license_count,
        full_license_end_date,
        full_license_start_date,
        is_inactive,
        last_modified_date,
        licensed_modules,
        license_number,
        license_number_test,
        parent_id,
        stopscripts,
        subsidiaries,
        temp_lincense_count,
        users__license_manager_extid,
        users__license_manager_id,
        license_type

    from source

)

select * from renamed
