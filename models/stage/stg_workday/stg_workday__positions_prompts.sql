
with source as (

    select * from {{ source('raw_workday', 'positions_prompts') }}

),

renamed as (

    select
        position_id,
        _fivetran_deleted,
        _fivetran_synced,
        area,
        availability_date,
        backfill_for,
        business_title,
        cf_lh_sup_org_level_1,
        cf_lrv_incumbent_term_date,
        cf_tf_open_position_is_backfill,
        cf_tf_position_has_vacate_date,
        cf_tf_position_is_open_no_future_fill_not_backfill,
        company,
        cost_center,
        cost_center_level_2,
        cost_center_level_3,
        cost_center_level_4,
        employee_id,
        employee_type,
        future_position_fill_effective_date,
        geo,
        has_future_position_fill,
        job_family,
        job_level,
        job_profile,
        job_profile_code,
        job_requisition_status,
        last_filled_date,
        location,
        management_chain_level_02,
        management_chain_level_03,
        management_chain_level_04,
        management_chain_level_05,
        management_chain_level_06,
        management_chain_level_07,
        management_chain_level_08,
        management_level,
        manager,
        manager_id,
        name,
        plan_date,
        position,
        position_status,
        req_id,
        request_completed_date,
        segment,
        supervisory_org,
        territory,
        worker_type,
        cf_lrv_worker_hire_date,
        worker_location,
        worker_status,
        management_chain_level_09

    from source

)

select * from renamed
