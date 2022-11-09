
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gslrmheader_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        jbcxm_account_c,
        jbcxm_asv_c,
        jbcxm_booking_date_c,
        jbcxm_booking_type_c,
        jbcxm_customer_c,
        jbcxm_external_source_id_c,
        jbcxm_mrr_c,
        jbcxm_one_time_c,
        jbcxm_parent_transaction_c,
        jbcxm_reason_c,
        jbcxm_renewable_c,
        jbcxm_renewal_date_c,
        jbcxm_renewal_status_c,
        jbcxm_renewed_transaction_c,
        jbcxm_subscription_end_date_c,
        jbcxm_subscription_start_date_c,
        jbcxm_term_c,
        jbcxm_users_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
