
with source as (

    select * from {{ source('raw_netsuite', 'process') }}

),

renamed as (

    select
        archive_status,
        assigned_employee_id,
        assigned_implementer_id,
        assign_from_record,
        assistant_step,
        audit__approval_policy_id,
        autosave_json,
        comment__ideas,
        copy_children,
        copy_of_id,
        current_json,
        current_process_maturity_scor,
        date_created,
        estimated_implementation_effo,
        first_step,
        first_step_description,
        initial_process_maturity_scor,
        is_inactive,
        last_modified_date,
        last_step,
        last_step_description,
        material_risk_assessed,
        next_process_id,
        next_process_review_date,
        no_step_id,
        number_0,
        order_selected_approvers,
        other_step_id,
        overview,
        parent_id,
        process_description,
        process_diagram,
        process_documentation,
        process_extid,
        process_id,
        process_name,
        process_participants,
        project__phase_id,
        related_subsidiary_id,
        screen_shot,
        screen_shot_1,
        screen_shot_2,
        screen_shot_3,
        shape_order,
        source_0,
        status_id,
        step_type_id,
        strongpoint_diagram_image,
        subsidiary_id,
        target_implementation_date,
        target_process_maturity_score,
        test_date,
        test_script,
        test_template_id,
        to_archive,
        update_child_owners_and_appro,
        update_child_process_policies,
        update_child_statuses,
        yes_step_id

    from source

)

select * from renamed
