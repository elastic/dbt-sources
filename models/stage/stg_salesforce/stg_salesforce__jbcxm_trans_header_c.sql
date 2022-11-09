
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_trans_header_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_account_c,
        jbcxm_associated_object_display_value_c,
        jbcxm_associated_object_record_id_c,
        jbcxm_associated_object_record_value_c,
        jbcxm_asv_c,
        jbcxm_asvtotal_c,
        jbcxm_booking_number_c,
        jbcxm_churn_reason_c,
        jbcxm_comment_c,
        jbcxm_customer_name_c,
        jbcxm_date_c,
        jbcxm_fcst_asv_c,
        jbcxm_fcst_booking_date_c,
        jbcxm_fcst_mrr_c,
        jbcxm_fcst_user_c,
        jbcxm_main_c,
        jbcxm_mrr_c,
        jbcxm_mrrtotal_c,
        jbcxm_name_c,
        jbcxm_next_renewal_date_c,
        jbcxm_one_time_revenue_c,
        jbcxm_opportunity_c,
        jbcxm_order_type_c,
        jbcxm_original_contract_c,
        jbcxm_parent_transaction_c,
        jbcxm_renewable_c,
        jbcxm_renewal_opportunity_c,
        jbcxm_renewal_status_c,
        jbcxm_renewal_transaction_c,
        jbcxm_rev_rec_end_date_c,
        jbcxm_rev_rec_start_date_c,
        jbcxm_sales_rep_c,
        jbcxm_term_c,
        jbcxm_term_fractional_c,
        jbcxm_users_c,
        jbcxm_users_total_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
