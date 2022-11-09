
with source as (

    select * from {{ source('raw_workday', 'employee') }}

),

renamed as (

    select
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        business_title,
        cf_ee_avp_group,
        cf_ee_reporting_avp_group,
        cf_ee_reporting_rvp_group,
        cf_ee_rvp_group,
        cf_esi_netsuite_id,
        company,
        concur_vendor_id,
        cost_center,
        currency,
        email_primary_home,
        email_work,
        employee_type,
        first_name,
        fp_a_manager,
        hire_date,
        job_family,
        job_title,
        last_name,
        locale_code,
        location,
        manager_id,
        manager_workday_id,
        mobile_home_phone,
        region,
        supervisory_organization,
        termination_date,
        wd_reporting_vp_id,
        work_address_city,
        work_address_country,
        work_address_formatted_line_1,
        work_address_postal_code,
        work_address_state_province,
        workday_id,
        worker_s_manager,
        worker_s_manager_group,
        worker_status,
        worker_type,
        cf_ee_reporting_vp_managers_for_sfdc_group,
        cf_lrvd_avp_group,
        cf_lrvd_rvp_group,
        cf_lrvd_reporting_rvp_for_sfdc_group,
        cf_lrvd_reporting_vp_for_sfdc_group,
        cf_lrvd_reporting_avp_for_sfdc_group,
        cf_ee_reporting_vp_for_sfdc_group,
        cf_ee_reporting_avp_for_sfdc_group,
        cf_ee_reporting_rvp_for_sfdc_group

    from source

)

select * from renamed
