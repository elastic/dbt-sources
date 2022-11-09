
with source as (

    select * from {{ source('raw_netsuite', 'test_record') }}

),

renamed as (

    select
        actual_outcome,
        assigned_id,
        assign_process_owner,
        change_tested_id,
        create_for_cr,
        customization_id,
        data_set,
        date_created,
        enviroment_name_id,
        expected_outcome,
        is_inactive,
        last_modified_date,
        ns_account_id,
        parent_id,
        parent_test_id,
        process_id,
        process_issue_tested_id,
        status_id,
        test_notes,
        test_number,
        test_record_extid,
        test_record_id,
        test_record_name,
        test_script,
        test_template_id,
        test_type_id,
        update_child_assigned

    from source

)

select * from renamed
