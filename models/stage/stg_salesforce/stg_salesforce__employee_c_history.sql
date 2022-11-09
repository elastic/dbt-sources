
with source as (

    select * from {{ source('raw_salesforce', 'employee_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        actual_end_date_c,
        actual_start_date_c,
        cost_center_c,
        created_by_id,
        created_date,
        currency_iso_code,
        department_c,
        employee_id_c,
        employee_level_c,
        employee_status_c,
        entities_c,
        expected_end_date_c,
        expected_start_date_c,
        first_name_c,
        hire_date_c,
        home_address_c,
        home_city_c,
        home_country_c,
        home_name_c,
        home_office_address_c,
        home_office_city_c,
        home_office_country_c,
        home_office_name_c,
        home_office_state_c,
        home_office_zip_c,
        home_state_c,
        home_zip_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_name_c,
        last_refreshed_from_c,
        last_sync_date_c,
        location_c,
        manager_c,
        manager_id_c,
        mobile_phone_c,
        name,
        netsuite_id_c,
        office_address_c,
        office_city_c,
        office_country_c,
        office_name_c,
        office_state_c,
        office_zip_c,
        owner_id,
        personal_email_c,
        system_modstamp,
        title_c,
        work_email_c,
        work_fax_c,
        work_land_number_c,
        work_mobile_c,
        work_phone_c,
        workday_id_c,
        working_group_c,
        summary_c,
        job_family_c,
        region_c,
        supervisory_org_c

    from source

)

select * from renamed
