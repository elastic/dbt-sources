
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_transaction_lines_c_history') }}

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
        jbcxm_asv_c,
        jbcxm_booking_c,
        jbcxm_date_c,
        jbcxm_mrr_c,
        jbcxm_next_renewal_date_c,
        jbcxm_one_time_revenue_c,
        jbcxm_order_number_c,
        jbcxm_rev_rec_end_date_c,
        jbcxm_rev_rec_start_date_c,
        jbcxm_statistical_c,
        jbcxm_term_c,
        jbcxm_transaction_lines_c,
        jbcxm_type_c,
        jbcxm_users_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
