
with source as (

    select * from {{ source('raw_workday', 'kibana_export') }}

),

renamed as (

    select
        employee_id_1,
        _fivetran_deleted,
        _fivetran_synced,
        age,
        business_title,
        candidate_id,
        cf_lh_region_for_location,
        company,
        cost_center,
        cost_center_hierarchy,
        employee_id,
        employee_type,
        first_name,
        fte,
        function,
        gender,
        hire_date,
        home_address_city,
        home_address_postal_code,
        home_address_state,
        job_profile,
        job_title,
        last_name,
        last_name_first_name,
        location,
        management_level,
        managers_email,
        netsuite_id,
        original_hire_date,
        pay_group,
        payroll_entity,
        payroll_region,
        position_id,
        position_start_date,
        position_start_date_month,
        position_termination_date,
        preferred_name,
        primary_home_address_city,
        primary_work_email,
        pronoun_locale_sensitive,
        race_ethnicity,
        sales_geo,
        sales_segment,
        sales_subregion,
        sup_org_hierarchy,
        tenure_years,
        termination_date,
        time_type,
        work_country,
        worker_status,
        worker_type,
        workers_manager,
        compensation_grade

    from source

)

select * from renamed
