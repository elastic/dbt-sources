
with source as (

    select * from {{ source('raw_netsuite_sa', 'test_record_history') }}

),

renamed as (

    select
        test_record_id,
        _fivetran_deleted,
        _fivetran_synced,
        actual_outcome,
        assign_process_owner,
        assigned_id,
        change_tested_id,
        create_for_cr,
        customization_id,
        data_set,
        date_created,
        date_deleted,
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
        test_record_name,
        test_script,
        test_template_id,
        test_type_id,
        update_child_assigned,
        partition_date

    from source

)

select * from renamed
