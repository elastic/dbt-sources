
with source as (

    select * from {{ source('raw_salesforce', 'pse_permission_control_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_allow_limited_exp_report_edit_post_submt_c,
        pse_allow_limited_expense_entry_post_submit_c,
        pse_allow_limited_tc_header_edit_post_submit_c,
        pse_default_record_limit_c,
        pse_exp_report_field_set_white_list_post_submit_c,
        pse_exp_report_field_white_list_post_submit_c,
        pse_exp_rpt_pse_field_white_list_post_smt_c,
        pse_expense_field_set_white_list_post_submit_c,
        pse_expense_field_white_list_post_submit_c,
        pse_expense_pse_field_white_list_post_submit_c,
        pse_tc_header_field_set_white_list_post_submit_c,
        pse_tc_header_field_white_list_post_submit_c,
        pse_tc_header_pse_field_white_list_post_smt_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
