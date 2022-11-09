
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_recognition_staging_table_primary_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_id_c,
        ffrr_account_name_c,
        ffrr_error_message_c,
        ffrr_exp_expense_c,
        ffrr_exp_milestone_c,
        ffrr_exp_project_c,
        ffrr_exp_timecard_split_c,
        ffrr_future_transactions_c,
        ffrr_gen_date_c,
        ffrr_group_name_c,
        ffrr_hyperlink_id_c,
        ffrr_previously_recognized_c,
        ffrr_recognition_date_c,
        ffrr_record_id_c,
        ffrr_to_recognize_this_period_c,
        ffrr_total_revenue_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
