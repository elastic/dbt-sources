
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_matched_view_setting_c_history') }}

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
        lean_data_a_2_b_columns_1_c,
        lean_data_a_2_b_columns_2_c,
        lean_data_a_2_b_columns_3_c,
        lean_data_a_2_b_columns_c,
        lean_data_a_2_blead_columns_1_c,
        lean_data_a_2_blead_columns_2_c,
        lean_data_a_2_blead_columns_3_c,
        lean_data_a_2_blead_columns_c,
        lean_data_a_2_bsummary_columns_1_c,
        lean_data_a_2_bsummary_columns_2_c,
        lean_data_a_2_bsummary_columns_3_c,
        lean_data_a_2_bsummary_columns_c,
        lean_data_account_columns_1_c,
        lean_data_account_columns_2_c,
        lean_data_account_columns_3_c,
        lean_data_account_columns_c,
        lean_data_contact_columns_1_c,
        lean_data_contact_columns_2_c,
        lean_data_contact_columns_3_c,
        lean_data_contact_columns_c,
        lean_data_lead_columns_1_c,
        lean_data_lead_columns_2_c,
        lean_data_lead_columns_3_c,
        lean_data_lead_columns_c,
        lean_data_lead_convert_columns_1_c,
        lean_data_lead_convert_columns_2_c,
        lean_data_lead_convert_columns_3_c,
        lean_data_lead_convert_columns_c,
        lean_data_log_summary_columns_0_c,
        lean_data_log_summary_columns_1_c,
        lean_data_log_summary_columns_2_c,
        lean_data_log_summary_columns_3_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
